from imports import nn, torch, nn_func

# Neural Network Architecture Class
class Network(nn.Module):
    def __init__(self, action_size):
        super(Network, self).__init__()
        self.convolutionalLayer1 = torch.nn.Conv2d(in_channels = 4, out_channels = 32, kernel_size = (3,3), stride = 2)
        self.convolutionalLayer2 = torch.nn.Conv2d(in_channels = 32, out_channels = 32, kernel_size = (3,3), stride = 2)
        self.convolutionalLayer3 = torch.nn.Conv2d(in_channels = 32, out_channels = 32, kernel_size = (3,3), stride = 2)
        self.flatten = torch.nn.Flatten()
        self.fullyConnectedLayer1 = torch.nn.Linear(512, 128)
        self.fullyConnectedLayer2A = torch.nn.Linear(128, action_size)
        self.fullyConnectedLayer2S = torch.nn.Linear(128, 1)

    def forward(self, state):
        x = self.convolutionalLayer1(state)
        x = nn_func.relu(x)
        x = self.convolutionalLayer2(x)
        x = nn_func.relu(x)
        x = self.convolutionalLayer3(x)
        x = nn_func.relu(x)
        x = self.flatten(x)
        x = self.fullyConnectedLayer1(x)
        x = nn_func.relu(x)
        action_values = self.fullyConnectedLayer2A(x)
        state_value = self.fullyConnectedLayer2S(x)[0]
        return action_values, state_value