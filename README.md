# Image Inpainting with RBF Regression
- TrainRBFRegression implements the least-squares estimation process for the optimal weights
- evalRBFModel evaluates the RBF model at a set of input points using the estimated weights
- rbf2d.m returns the values of a RBF at a set of image coordinates
- GrayScalePatchReconstruction allows us to pick a small image patch, fits an RBF model to the patch and displays the reconstructed patch using the learned model
- TrainRBFRegression_regularized is the regularized version of TrainRBFRegression
