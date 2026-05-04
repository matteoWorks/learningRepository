from imports import nn, torch, nn_func

# Neural Network Architecture Class
class Network(nn.Module):
    def __init__(self, action_size, seed = 67):
        super(Network, self).__init__()
        self.seed = torch.manual_seed(seed)
        self.convolutionalLayer1 = nn.Conv2d(3, 32, kernel_size = 8, stride = 4)
        self.batchNorm1 = nn.BatchNorm2d(32)
        self.convolutionalLayer2 = nn.Conv2d(32, 64, kernel_size = 4, stride = 2)
        self.batchNorm2 = nn.BatchNorm2d(64)
        self.convolutionalLayer3 = nn.Conv2d(64, 64, kernel_size = 3, stride = 1)
        self.batchNorm3 = nn.BatchNorm2d(64)
        self.convolutionalLayer4 = nn.Conv2d(64, 128, kernel_size = 3, stride = 1)
        self.batchNorm4 = nn.BatchNorm2d(128)

        self.fullyConnectedLayer1 = nn.Linear(10 * 10 * 128, 512)
        self.fullyConnectedLayer2 = nn.Linear(512, 256)
        self.fullyConnectedLayer3 = nn.Linear(256, action_size)
    
    def forward(self, state):
        x = nn_func.relu(self.batchNorm1(self.convolutionalLayer1(state)))
        x = nn_func.relu(self.batchNorm2(self.convolutionalLayer2(x)))
        x = nn_func.relu(self.batchNorm3(self.convolutionalLayer3(x)))
        x = nn_func.relu(self.batchNorm4(self.convolutionalLayer4(x)))
        x = x.view(x.size(0), -1)
        x = nn_func.relu(self.fullyConnectedLayer1(x))
        x = nn_func.relu(self.fullyConnectedLayer2(x))
        return self.fullyConnectedLayer3(x)
