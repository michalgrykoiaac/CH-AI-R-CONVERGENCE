# CH-AI-R-CONVERGENCE
Chairs as one of the most basic and used forms of furniture provide both function and aesthetic. This project explores the relationship between chairs of different eras and designers through machine learning in order to create new designs based on their predecessors.
![The coolest chairs designs - dataset creation](https://user-images.githubusercontent.com/97453175/177809128-12e2fe7a-8efe-4b37-adb0-28da5a4472e2.jpg)


GENERATIVE ADVERSIAL NETWORKS: 

The main ML architecture used for this project is the GENERATIVE ADVERSIAL NETWORKS.  This architecture works by estimating the  generative models using samples between real models through discriminating between the real and fake samples created. This is taken through a neural network to output a binary result.  The balance between the parts pushes both models to improve over time. The other part of the GAN consists of the encoder and decoder which down samples this original input to 0s and 1s.

The discriminator part of the architecture trains to become better to distinguish what is better and what is fake while the generator is at the same time trained to start from noise and create images which is better at fooling the discriminator. This balance pushes both models to improve over time.  Within the dense layer architecture of this model Convolutions are setup so the input number gradually increase to the number used in the training set and then decreased in similar manner, In our case they are centred around the 64 x 64 x64 voxel models.

![The coolest chairs designs - cover](https://user-images.githubusercontent.com/97453175/177809461-60c08892-6262-4860-b6ca-d7d2468016bb.jpg)


LATENT SPACE: CHAIR INTERPOLATIONS AND CREATIONS

With this we were then free to explore the latent space by selecting samples manually and manipulating them as we saw fit. In these examples we filtered out samples which had legs and those that were more organic in nature. These voxel samples were then manipulated by averaging, subtract and adding parts together to create new designs.

Ch-AI-r convergence is a project of IAAC, Institute for Advanced Architecture of Catalonia developed in the Master of Advanced Computation in Architecture and Design 2021/22 by Students: Michal Gryko and Maria Papadimitraki, Faculty: Oana Taut, Faculty assistant: Aleksander Mastalski

Blog: https://www.iaacblog.com/programs/chair-convulgence-generative-planning/
