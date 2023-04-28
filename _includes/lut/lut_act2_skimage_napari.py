# Instantiate the napari viewer
import napari
viewer = napari.Viewer()

# Read the image
from OpenIJTIFF import open_ij_tiff
image_control, axes, scales, units = open_ij_tiff('https://github.com/NEUBIAS/training-resources/raw/master/image_data/xy_calibrated_16bit__nuclear_protein_control.tif')
image_treated, axes, scales, units = open_ij_tiff('https://github.com/NEUBIAS/training-resources/raw/master/image_data/xy_calibrated_16bit__nuclear_protein_treated.tif')

# View the intensity image as grayscale
viewer.add_image(image_control, name='control', colormap='gray')
viewer.add_image(image_treated, name='treated', colormap='gray')

viewer.layers['control'].contrast_limits=(0, 350)
viewer.layers['treated'].contrast_limits=(0, 350)