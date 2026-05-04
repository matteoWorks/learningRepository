from imports import torch, nn, nn_func

# Neural Network Architecture Class
class Network(nn.Module):
    def __init__(self, state_size, action_size, seed = 67):
        super(Network, self).__init__()
        self.seed = torch.manual_seed(seed)
        self.fullyConnectedLayer1 = nn.Linear(state_size, 64)
        self.fullyConnectedLayer2 = nn.Linear(64, 64)
        self.fullyConnectedLayer3 = nn.Linear(64, action_size)

    def forward(self, state):
        x = self.fullyConnectedLayer1(state)
        x = nn_func.relu(x)
        x = self.fullyConnectedLayer2(x)
        x = nn_func.relu(x)
        return self.fullyConnectedLayer3(x)