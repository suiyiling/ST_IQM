# ST_IQM-ST-SIAQ
Implementation of "Image quality assessment for free viewpoint video based on mid-level contours feature."

Dependecy:
Please download the Sketch Token pakage and install it. 
https://github.com/gitlim/SketchTokens
(Only for acadamic usage)


Running:

st_iqm_score  = ST_IQM(im_ori, im_syth ,model, dis_measure , beta )

- Input

im_ori : the reference/original image

im_syn : the synthesized/distorted image

model : Sketch Token model (could be full or samll, see https://github.com/gitlim/SketchTokens)

dis_measure : metric used to calculate the distance between sets of vectors. (Default: 'JSD')
It could be one of the following:

(1) 'Euclidean' :  The Euclidean / SQUARED Euclidean distance. 

(2) 'Chisq' : The chi-squared distance.

(3) 'Cosine' : The cosine distance.

(4) 'JSD' : The Jensen Shannon Divergence.

beta : parameter used for minkowski summation.

- Output 
st_iqm_score: the predicted quality score

Example:
st_iqm_score  = ST_IQM( ori ,  syn, model,'JSD',0.4 )

Citation:
Please cite the following paper if you end up using the code:

[1] Joseph J. Lim, C. Lawrence Zitnick, and Piotr Dollar. "Sketch Tokens: A Learned Mid-level Representation for Contour and and Object Detection," CVPR2013.


[2] Ling, Suiyi, and Patrick Le Callet. "Image quality assessment for free viewpoint video based on mid-level contours feature." 2017 IEEE International Conference on Multimedia and Expo (ICME). IEEE, 2017.

