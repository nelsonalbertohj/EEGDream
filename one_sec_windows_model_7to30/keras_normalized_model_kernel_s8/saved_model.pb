Ö
Ç
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
¼
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

;
Elu
features"T
activations"T"
Ttype:
2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.7.02v2.7.0-0-gc256c071bb28âá
©
$depthwise_conv1d_30/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$depthwise_conv1d_30/depthwise_kernel
¢
8depthwise_conv1d_30/depthwise_kernel/Read/ReadVariableOpReadVariableOp$depthwise_conv1d_30/depthwise_kernel*#
_output_shapes
:*
dtype0
©
$separable_conv1d_49/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$separable_conv1d_49/depthwise_kernel
¢
8separable_conv1d_49/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv1d_49/depthwise_kernel*#
_output_shapes
:*
dtype0
¨
$separable_conv1d_49/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$separable_conv1d_49/pointwise_kernel
¡
8separable_conv1d_49/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv1d_49/pointwise_kernel*"
_output_shapes
:*
dtype0

batch_normalization_56/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_56/gamma

0batch_normalization_56/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_56/gamma*
_output_shapes
:*
dtype0

batch_normalization_56/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_56/beta

/batch_normalization_56/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_56/beta*
_output_shapes
:*
dtype0

"batch_normalization_56/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_56/moving_mean

6batch_normalization_56/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_56/moving_mean*
_output_shapes
:*
dtype0
¤
&batch_normalization_56/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_56/moving_variance

:batch_normalization_56/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_56/moving_variance*
_output_shapes
:*
dtype0
¨
$separable_conv1d_50/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$separable_conv1d_50/depthwise_kernel
¡
8separable_conv1d_50/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv1d_50/depthwise_kernel*"
_output_shapes
:@*
dtype0
¨
$separable_conv1d_50/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$separable_conv1d_50/pointwise_kernel
¡
8separable_conv1d_50/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv1d_50/pointwise_kernel*"
_output_shapes
:*
dtype0

batch_normalization_57/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_57/gamma

0batch_normalization_57/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_57/gamma*
_output_shapes
:*
dtype0

batch_normalization_57/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_57/beta

/batch_normalization_57/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_57/beta*
_output_shapes
:*
dtype0

"batch_normalization_57/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_57/moving_mean

6batch_normalization_57/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_57/moving_mean*
_output_shapes
:*
dtype0
¤
&batch_normalization_57/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_57/moving_variance

:batch_normalization_57/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_57/moving_variance*
_output_shapes
:*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
·
+Adam/depthwise_conv1d_30/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/depthwise_conv1d_30/depthwise_kernel/m
°
?Adam/depthwise_conv1d_30/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/depthwise_conv1d_30/depthwise_kernel/m*#
_output_shapes
:*
dtype0
·
+Adam/separable_conv1d_49/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/separable_conv1d_49/depthwise_kernel/m
°
?Adam/separable_conv1d_49/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv1d_49/depthwise_kernel/m*#
_output_shapes
:*
dtype0
¶
+Adam/separable_conv1d_49/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/separable_conv1d_49/pointwise_kernel/m
¯
?Adam/separable_conv1d_49/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv1d_49/pointwise_kernel/m*"
_output_shapes
:*
dtype0

#Adam/batch_normalization_56/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_56/gamma/m

7Adam/batch_normalization_56/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_56/gamma/m*
_output_shapes
:*
dtype0

"Adam/batch_normalization_56/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_56/beta/m

6Adam/batch_normalization_56/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_56/beta/m*
_output_shapes
:*
dtype0
¶
+Adam/separable_conv1d_50/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+Adam/separable_conv1d_50/depthwise_kernel/m
¯
?Adam/separable_conv1d_50/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv1d_50/depthwise_kernel/m*"
_output_shapes
:@*
dtype0
¶
+Adam/separable_conv1d_50/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/separable_conv1d_50/pointwise_kernel/m
¯
?Adam/separable_conv1d_50/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv1d_50/pointwise_kernel/m*"
_output_shapes
:*
dtype0

#Adam/batch_normalization_57/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_57/gamma/m

7Adam/batch_normalization_57/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_57/gamma/m*
_output_shapes
:*
dtype0

"Adam/batch_normalization_57/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_57/beta/m

6Adam/batch_normalization_57/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_57/beta/m*
_output_shapes
:*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
·
+Adam/depthwise_conv1d_30/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/depthwise_conv1d_30/depthwise_kernel/v
°
?Adam/depthwise_conv1d_30/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/depthwise_conv1d_30/depthwise_kernel/v*#
_output_shapes
:*
dtype0
·
+Adam/separable_conv1d_49/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/separable_conv1d_49/depthwise_kernel/v
°
?Adam/separable_conv1d_49/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv1d_49/depthwise_kernel/v*#
_output_shapes
:*
dtype0
¶
+Adam/separable_conv1d_49/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/separable_conv1d_49/pointwise_kernel/v
¯
?Adam/separable_conv1d_49/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv1d_49/pointwise_kernel/v*"
_output_shapes
:*
dtype0

#Adam/batch_normalization_56/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_56/gamma/v

7Adam/batch_normalization_56/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_56/gamma/v*
_output_shapes
:*
dtype0

"Adam/batch_normalization_56/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_56/beta/v

6Adam/batch_normalization_56/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_56/beta/v*
_output_shapes
:*
dtype0
¶
+Adam/separable_conv1d_50/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+Adam/separable_conv1d_50/depthwise_kernel/v
¯
?Adam/separable_conv1d_50/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv1d_50/depthwise_kernel/v*"
_output_shapes
:@*
dtype0
¶
+Adam/separable_conv1d_50/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/separable_conv1d_50/pointwise_kernel/v
¯
?Adam/separable_conv1d_50/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv1d_50/pointwise_kernel/v*"
_output_shapes
:*
dtype0

#Adam/batch_normalization_57/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_57/gamma/v

7Adam/batch_normalization_57/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_57/gamma/v*
_output_shapes
:*
dtype0

"Adam/batch_normalization_57/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_57/beta/v

6Adam/batch_normalization_57/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_57/beta/v*
_output_shapes
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ÆX
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*X
value÷WBôW BíW
Ç
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
h
depthwise_kernel
	variables
trainable_variables
regularization_losses
	keras_api
~
depthwise_kernel
pointwise_kernel
	variables
trainable_variables
regularization_losses
	keras_api

 axis
	!gamma
"beta
#moving_mean
$moving_variance
%	variables
&trainable_variables
'regularization_losses
(	keras_api
R
)	variables
*trainable_variables
+regularization_losses
,	keras_api
R
-	variables
.trainable_variables
/regularization_losses
0	keras_api
~
1depthwise_kernel
2pointwise_kernel
3	variables
4trainable_variables
5regularization_losses
6	keras_api

7axis
	8gamma
9beta
:moving_mean
;moving_variance
<	variables
=trainable_variables
>regularization_losses
?	keras_api
R
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
R
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
R
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
R
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
h

Pkernel
Qbias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
R
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api

Ziter

[beta_1

\beta_2
	]decay
^learning_ratem°m±m²!m³"m´1mµ2m¶8m·9m¸Pm¹Qmºv»v¼v½!v¾"v¿1vÀ2vÁ8vÂ9vÃPvÄQvÅ
n
0
1
2
!3
"4
#5
$6
17
28
89
910
:11
;12
P13
Q14
N
0
1
2
!3
"4
15
26
87
98
P9
Q10
 
­
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
 
zx
VARIABLE_VALUE$depthwise_conv1d_30/depthwise_kernel@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
zx
VARIABLE_VALUE$separable_conv1d_49/depthwise_kernel@layer_with_weights-1/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE$separable_conv1d_49/pointwise_kernel@layer_with_weights-1/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_56/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_56/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_56/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_56/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

!0
"1
#2
$3

!0
"1
 
­
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
%	variables
&trainable_variables
'regularization_losses
 
 
 
­
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
)	variables
*trainable_variables
+regularization_losses
 
 
 
­
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
-	variables
.trainable_variables
/regularization_losses
zx
VARIABLE_VALUE$separable_conv1d_50/depthwise_kernel@layer_with_weights-3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE$separable_conv1d_50/pointwise_kernel@layer_with_weights-3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
¯
}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_57/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_57/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_57/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_57/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

80
91
:2
;3

80
91
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
 
 
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
 
 
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
 
 
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
 
 
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

P0
Q1

P0
Q1
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
R	variables
Strainable_variables
Tregularization_losses
 
 
 
²
 non_trainable_variables
¡layers
¢metrics
 £layer_regularization_losses
¤layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

#0
$1
:2
;3
f
0
1
2
3
4
5
6
7
	8

9
10
11
12
13

¥0
¦1
 
 
 
 
 
 
 
 
 
 
 
 

#0
$1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

:0
;1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

§total

¨count
©	variables
ª	keras_api
I

«total

¬count
­
_fn_kwargs
®	variables
¯	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

§0
¨1

©	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

«0
¬1

®	variables

VARIABLE_VALUE+Adam/depthwise_conv1d_30/depthwise_kernel/m\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/separable_conv1d_49/depthwise_kernel/m\layer_with_weights-1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/separable_conv1d_49/pointwise_kernel/m\layer_with_weights-1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_56/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_56/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/separable_conv1d_50/depthwise_kernel/m\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/separable_conv1d_50/pointwise_kernel/m\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_57/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_57/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/depthwise_conv1d_30/depthwise_kernel/v\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/separable_conv1d_49/depthwise_kernel/v\layer_with_weights-1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/separable_conv1d_49/pointwise_kernel/v\layer_with_weights-1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_56/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_56/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/separable_conv1d_50/depthwise_kernel/v\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/separable_conv1d_50/pointwise_kernel/v\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_57/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_57/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_32Placeholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿ
¼
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_32$depthwise_conv1d_30/depthwise_kernel$separable_conv1d_49/depthwise_kernel$separable_conv1d_49/pointwise_kernel&batch_normalization_56/moving_variancebatch_normalization_56/gamma"batch_normalization_56/moving_meanbatch_normalization_56/beta$separable_conv1d_50/depthwise_kernel$separable_conv1d_50/pointwise_kernel&batch_normalization_57/moving_variancebatch_normalization_57/gamma"batch_normalization_57/moving_meanbatch_normalization_57/betadense/kernel
dense/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*1
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 */
f*R(
&__inference_signature_wrapper_17001859
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ç
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename8depthwise_conv1d_30/depthwise_kernel/Read/ReadVariableOp8separable_conv1d_49/depthwise_kernel/Read/ReadVariableOp8separable_conv1d_49/pointwise_kernel/Read/ReadVariableOp0batch_normalization_56/gamma/Read/ReadVariableOp/batch_normalization_56/beta/Read/ReadVariableOp6batch_normalization_56/moving_mean/Read/ReadVariableOp:batch_normalization_56/moving_variance/Read/ReadVariableOp8separable_conv1d_50/depthwise_kernel/Read/ReadVariableOp8separable_conv1d_50/pointwise_kernel/Read/ReadVariableOp0batch_normalization_57/gamma/Read/ReadVariableOp/batch_normalization_57/beta/Read/ReadVariableOp6batch_normalization_57/moving_mean/Read/ReadVariableOp:batch_normalization_57/moving_variance/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp?Adam/depthwise_conv1d_30/depthwise_kernel/m/Read/ReadVariableOp?Adam/separable_conv1d_49/depthwise_kernel/m/Read/ReadVariableOp?Adam/separable_conv1d_49/pointwise_kernel/m/Read/ReadVariableOp7Adam/batch_normalization_56/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_56/beta/m/Read/ReadVariableOp?Adam/separable_conv1d_50/depthwise_kernel/m/Read/ReadVariableOp?Adam/separable_conv1d_50/pointwise_kernel/m/Read/ReadVariableOp7Adam/batch_normalization_57/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_57/beta/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp?Adam/depthwise_conv1d_30/depthwise_kernel/v/Read/ReadVariableOp?Adam/separable_conv1d_49/depthwise_kernel/v/Read/ReadVariableOp?Adam/separable_conv1d_49/pointwise_kernel/v/Read/ReadVariableOp7Adam/batch_normalization_56/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_56/beta/v/Read/ReadVariableOp?Adam/separable_conv1d_50/depthwise_kernel/v/Read/ReadVariableOp?Adam/separable_conv1d_50/pointwise_kernel/v/Read/ReadVariableOp7Adam/batch_normalization_57/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_57/beta/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst*;
Tin4
220	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_save_17002909
Ê
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename$depthwise_conv1d_30/depthwise_kernel$separable_conv1d_49/depthwise_kernel$separable_conv1d_49/pointwise_kernelbatch_normalization_56/gammabatch_normalization_56/beta"batch_normalization_56/moving_mean&batch_normalization_56/moving_variance$separable_conv1d_50/depthwise_kernel$separable_conv1d_50/pointwise_kernelbatch_normalization_57/gammabatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_variancedense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1+Adam/depthwise_conv1d_30/depthwise_kernel/m+Adam/separable_conv1d_49/depthwise_kernel/m+Adam/separable_conv1d_49/pointwise_kernel/m#Adam/batch_normalization_56/gamma/m"Adam/batch_normalization_56/beta/m+Adam/separable_conv1d_50/depthwise_kernel/m+Adam/separable_conv1d_50/pointwise_kernel/m#Adam/batch_normalization_57/gamma/m"Adam/batch_normalization_57/beta/mAdam/dense/kernel/mAdam/dense/bias/m+Adam/depthwise_conv1d_30/depthwise_kernel/v+Adam/separable_conv1d_49/depthwise_kernel/v+Adam/separable_conv1d_49/pointwise_kernel/v#Adam/batch_normalization_56/gamma/v"Adam/batch_normalization_56/beta/v+Adam/separable_conv1d_50/depthwise_kernel/v+Adam/separable_conv1d_50/pointwise_kernel/v#Adam/batch_normalization_57/gamma/v"Adam/batch_normalization_57/beta/vAdam/dense/kernel/vAdam/dense/bias/v*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference__traced_restore_17003057õô

³
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17002557

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å
³
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17002611

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ê%
í
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17002645

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ¢
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ç=
×
F__inference_model_68_layer_call_and_return_conditional_losses_17001816
input_323
depthwise_conv1d_30_17001772:3
separable_conv1d_49_17001775:2
separable_conv1d_49_17001777:-
batch_normalization_56_17001780:-
batch_normalization_56_17001782:-
batch_normalization_56_17001784:-
batch_normalization_56_17001786:2
separable_conv1d_50_17001791:@2
separable_conv1d_50_17001793:-
batch_normalization_57_17001796:-
batch_normalization_57_17001798:-
batch_normalization_57_17001800:-
batch_normalization_57_17001802:!
dense_17001809:	
dense_17001811:
identity¢.batch_normalization_56/StatefulPartitionedCall¢.batch_normalization_57/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢+depthwise_conv1d_30/StatefulPartitionedCall¢"dropout_33/StatefulPartitionedCall¢+separable_conv1d_49/StatefulPartitionedCall¢+separable_conv1d_50/StatefulPartitionedCall
+depthwise_conv1d_30/StatefulPartitionedCallStatefulPartitionedCallinput_32depthwise_conv1d_30_17001772*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_depthwise_conv1d_30_layer_call_and_return_conditional_losses_17001143Ø
+separable_conv1d_49/StatefulPartitionedCallStatefulPartitionedCall4depthwise_conv1d_30/StatefulPartitionedCall:output:0separable_conv1d_49_17001775separable_conv1d_49_17001777*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17001165¨
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall4separable_conv1d_49/StatefulPartitionedCall:output:0batch_normalization_56_17001780batch_normalization_56_17001782batch_normalization_56_17001784batch_normalization_56_17001786*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17001542ý
activation_56/PartitionedCallPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_activation_56_layer_call_and_return_conditional_losses_17001205ù
$average_pooling1d_55/PartitionedCallPartitionedCall&activation_56/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17001214Ð
+separable_conv1d_50/StatefulPartitionedCallStatefulPartitionedCall-average_pooling1d_55/PartitionedCall:output:0separable_conv1d_50_17001791separable_conv1d_50_17001793*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17001234§
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall4separable_conv1d_50/StatefulPartitionedCall:output:0batch_normalization_57_17001796batch_normalization_57_17001798batch_normalization_57_17001800batch_normalization_57_17001802*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17001462ü
activation_57/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_activation_57_layer_call_and_return_conditional_losses_17001274ù
$average_pooling1d_56/PartitionedCallPartitionedCall&activation_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17001283ü
"dropout_33/StatefulPartitionedCallStatefulPartitionedCall-average_pooling1d_56/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_33_layer_call_and_return_conditional_losses_17001399á
flatten/PartitionedCallPartitionedCall+dropout_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_17001298
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_17001809dense_17001811*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_17001310Û
softmax/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_softmax_layer_call_and_return_conditional_losses_17001321o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
NoOpNoOp/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall^dense/StatefulPartitionedCall,^depthwise_conv1d_30/StatefulPartitionedCall#^dropout_33/StatefulPartitionedCall,^separable_conv1d_49/StatefulPartitionedCall,^separable_conv1d_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : 2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2Z
+depthwise_conv1d_30/StatefulPartitionedCall+depthwise_conv1d_30/StatefulPartitionedCall2H
"dropout_33/StatefulPartitionedCall"dropout_33/StatefulPartitionedCall2Z
+separable_conv1d_49/StatefulPartitionedCall+separable_conv1d_49/StatefulPartitionedCall2Z
+separable_conv1d_50/StatefulPartitionedCall+separable_conv1d_50/StatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_32
¹<
°
F__inference_model_68_layer_call_and_return_conditional_losses_17001324

inputs3
depthwise_conv1d_30_17001144:3
separable_conv1d_49_17001166:2
separable_conv1d_49_17001168:-
batch_normalization_56_17001191:-
batch_normalization_56_17001193:-
batch_normalization_56_17001195:-
batch_normalization_56_17001197:2
separable_conv1d_50_17001235:@2
separable_conv1d_50_17001237:-
batch_normalization_57_17001260:-
batch_normalization_57_17001262:-
batch_normalization_57_17001264:-
batch_normalization_57_17001266:!
dense_17001311:	
dense_17001313:
identity¢.batch_normalization_56/StatefulPartitionedCall¢.batch_normalization_57/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢+depthwise_conv1d_30/StatefulPartitionedCall¢+separable_conv1d_49/StatefulPartitionedCall¢+separable_conv1d_50/StatefulPartitionedCall
+depthwise_conv1d_30/StatefulPartitionedCallStatefulPartitionedCallinputsdepthwise_conv1d_30_17001144*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_depthwise_conv1d_30_layer_call_and_return_conditional_losses_17001143Ø
+separable_conv1d_49/StatefulPartitionedCallStatefulPartitionedCall4depthwise_conv1d_30/StatefulPartitionedCall:output:0separable_conv1d_49_17001166separable_conv1d_49_17001168*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17001165ª
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall4separable_conv1d_49/StatefulPartitionedCall:output:0batch_normalization_56_17001191batch_normalization_56_17001193batch_normalization_56_17001195batch_normalization_56_17001197*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17001190ý
activation_56/PartitionedCallPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_activation_56_layer_call_and_return_conditional_losses_17001205ù
$average_pooling1d_55/PartitionedCallPartitionedCall&activation_56/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17001214Ð
+separable_conv1d_50/StatefulPartitionedCallStatefulPartitionedCall-average_pooling1d_55/PartitionedCall:output:0separable_conv1d_50_17001235separable_conv1d_50_17001237*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17001234©
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall4separable_conv1d_50/StatefulPartitionedCall:output:0batch_normalization_57_17001260batch_normalization_57_17001262batch_normalization_57_17001264batch_normalization_57_17001266*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17001259ü
activation_57/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_activation_57_layer_call_and_return_conditional_losses_17001274ù
$average_pooling1d_56/PartitionedCallPartitionedCall&activation_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17001283ì
dropout_33/PartitionedCallPartitionedCall-average_pooling1d_56/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_33_layer_call_and_return_conditional_losses_17001290Ù
flatten/PartitionedCallPartitionedCall#dropout_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_17001298
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_17001311dense_17001313*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_17001310Û
softmax/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_softmax_layer_call_and_return_conditional_losses_17001321o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall^dense/StatefulPartitionedCall,^depthwise_conv1d_30/StatefulPartitionedCall,^separable_conv1d_49/StatefulPartitionedCall,^separable_conv1d_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : 2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2Z
+depthwise_conv1d_30/StatefulPartitionedCall+depthwise_conv1d_30/StatefulPartitionedCall2Z
+separable_conv1d_49/StatefulPartitionedCall+separable_conv1d_49/StatefulPartitionedCall2Z
+separable_conv1d_50/StatefulPartitionedCall+separable_conv1d_50/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾
L
0__inference_activation_57_layer_call_fn_17002650

inputs
identity½
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_activation_57_layer_call_and_return_conditional_losses_17001274d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¸
I
-__inference_dropout_33_layer_call_fn_17002686

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_33_layer_call_and_return_conditional_losses_17001290d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
&
í
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17000969

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ¢
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
&
í
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17002591

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ¢
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð%
í
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17001542

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ¢
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê%
í
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17001462

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ¢
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


+__inference_model_68_layer_call_fn_17001929

inputs
unknown: 
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:@
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:	

unknown_13:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_model_68_layer_call_and_return_conditional_losses_17001654o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á=
Õ
F__inference_model_68_layer_call_and_return_conditional_losses_17001654

inputs3
depthwise_conv1d_30_17001610:3
separable_conv1d_49_17001613:2
separable_conv1d_49_17001615:-
batch_normalization_56_17001618:-
batch_normalization_56_17001620:-
batch_normalization_56_17001622:-
batch_normalization_56_17001624:2
separable_conv1d_50_17001629:@2
separable_conv1d_50_17001631:-
batch_normalization_57_17001634:-
batch_normalization_57_17001636:-
batch_normalization_57_17001638:-
batch_normalization_57_17001640:!
dense_17001647:	
dense_17001649:
identity¢.batch_normalization_56/StatefulPartitionedCall¢.batch_normalization_57/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢+depthwise_conv1d_30/StatefulPartitionedCall¢"dropout_33/StatefulPartitionedCall¢+separable_conv1d_49/StatefulPartitionedCall¢+separable_conv1d_50/StatefulPartitionedCall
+depthwise_conv1d_30/StatefulPartitionedCallStatefulPartitionedCallinputsdepthwise_conv1d_30_17001610*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_depthwise_conv1d_30_layer_call_and_return_conditional_losses_17001143Ø
+separable_conv1d_49/StatefulPartitionedCallStatefulPartitionedCall4depthwise_conv1d_30/StatefulPartitionedCall:output:0separable_conv1d_49_17001613separable_conv1d_49_17001615*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17001165¨
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall4separable_conv1d_49/StatefulPartitionedCall:output:0batch_normalization_56_17001618batch_normalization_56_17001620batch_normalization_56_17001622batch_normalization_56_17001624*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17001542ý
activation_56/PartitionedCallPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_activation_56_layer_call_and_return_conditional_losses_17001205ù
$average_pooling1d_55/PartitionedCallPartitionedCall&activation_56/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17001214Ð
+separable_conv1d_50/StatefulPartitionedCallStatefulPartitionedCall-average_pooling1d_55/PartitionedCall:output:0separable_conv1d_50_17001629separable_conv1d_50_17001631*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17001234§
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall4separable_conv1d_50/StatefulPartitionedCall:output:0batch_normalization_57_17001634batch_normalization_57_17001636batch_normalization_57_17001638batch_normalization_57_17001640*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17001462ü
activation_57/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_activation_57_layer_call_and_return_conditional_losses_17001274ù
$average_pooling1d_56/PartitionedCallPartitionedCall&activation_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17001283ü
"dropout_33/StatefulPartitionedCallStatefulPartitionedCall-average_pooling1d_56/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_33_layer_call_and_return_conditional_losses_17001399á
flatten/PartitionedCallPartitionedCall+dropout_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_17001298
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_17001647dense_17001649*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_17001310Û
softmax/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_softmax_layer_call_and_return_conditional_losses_17001321o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
NoOpNoOp/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall^dense/StatefulPartitionedCall,^depthwise_conv1d_30/StatefulPartitionedCall#^dropout_33/StatefulPartitionedCall,^separable_conv1d_49/StatefulPartitionedCall,^separable_conv1d_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : 2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2Z
+depthwise_conv1d_30/StatefulPartitionedCall+depthwise_conv1d_30/StatefulPartitionedCall2H
"dropout_33/StatefulPartitionedCall"dropout_33/StatefulPartitionedCall2Z
+separable_conv1d_49/StatefulPartitionedCall+separable_conv1d_49/StatefulPartitionedCall2Z
+separable_conv1d_50/StatefulPartitionedCall+separable_conv1d_50/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
F
*__inference_flatten_layer_call_fn_17002713

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_17001298a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¥
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17002214

inputs;
$expanddims_1_readvariableop_resource::
$expanddims_2_readvariableop_resource:
identity¢ExpandDims_1/ReadVariableOp¢ExpandDims_2/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :|

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ExpandDims_1/ReadVariableOpReadVariableOp$expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:
ExpandDims_2/ReadVariableOpReadVariableOp$expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_2
ExpandDims#ExpandDims_2/ReadVariableOp:value:0ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ê
separable_conv2d/depthwiseDepthwiseConv2dNativeExpandDims:output:0ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
Â
separable_conv2dConv2D#separable_conv2d/depthwise:output:0ExpandDims_2:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

SqueezeSqueezeseparable_conv2d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
l
IdentityIdentitySqueeze:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^ExpandDims_1/ReadVariableOp^ExpandDims_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2:
ExpandDims_2/ReadVariableOpExpandDims_2/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î
¤
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17001234

inputs:
$expanddims_1_readvariableop_resource:@:
$expanddims_2_readvariableop_resource:
identity¢ExpandDims_1/ReadVariableOp¢ExpandDims_2/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :s

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
ExpandDims_1/ReadVariableOpReadVariableOp$expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@
ExpandDims_2/ReadVariableOpReadVariableOp$expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_2
ExpandDims#ExpandDims_2/ReadVariableOp:value:0ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   @         o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Á
separable_conv2d/depthwiseDepthwiseConv2dNativeExpandDims:output:0ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
¹
separable_conv2dConv2D#separable_conv2d/depthwise:output:0ExpandDims_2:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
z
SqueezeSqueezeseparable_conv2d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
c
IdentityIdentitySqueeze:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^ExpandDims_1/ReadVariableOp^ExpandDims_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2:
ExpandDims_2/ReadVariableOpExpandDims_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ã
Ô
9__inference_batch_normalization_56_layer_call_fn_17002285

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17001542t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
a
E__inference_flatten_layer_call_and_return_conditional_losses_17001298

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

³
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002305

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î
S
7__inference_average_pooling1d_55_layer_call_fn_17002413

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17001214d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à
g
K__inference_activation_56_layer_call_and_return_conditional_losses_17002403

inputs
identityI
EluEluinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
IdentityIdentityElu:activations:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ë
Q__inference_depthwise_conv1d_30_layer_call_and_return_conditional_losses_17001143

inputs;
$expanddims_1_readvariableop_resource:
identity¢ExpandDims_1/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :t

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ExpandDims_1/ReadVariableOpReadVariableOp$expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ±
	depthwiseDepthwiseConv2dNativeExpandDims:output:0ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
t
SqueezeSqueezedepthwise:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
d
IdentityIdentitySqueeze:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø
¥
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17001165

inputs;
$expanddims_1_readvariableop_resource::
$expanddims_2_readvariableop_resource:
identity¢ExpandDims_1/ReadVariableOp¢ExpandDims_2/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :t

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ExpandDims_1/ReadVariableOpReadVariableOp$expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:
ExpandDims_2/ReadVariableOpReadVariableOp$expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_2
ExpandDims#ExpandDims_2/ReadVariableOp:value:0ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Â
separable_conv2d/depthwiseDepthwiseConv2dNativeExpandDims:output:0ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
º
separable_conv2dConv2D#separable_conv2d/depthwise:output:0ExpandDims_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
{
SqueezeSqueezeseparable_conv2d:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
d
IdentityIdentitySqueeze:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^ExpandDims_1/ReadVariableOp^ExpandDims_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2:
ExpandDims_2/ReadVariableOpExpandDims_2/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
&
í
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17001096

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ¢
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å
Ô
9__inference_batch_normalization_57_layer_call_fn_17002498

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17001049|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
Ô
9__inference_batch_normalization_57_layer_call_fn_17002524

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17001259s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

¥
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17000891

inputs;
$expanddims_1_readvariableop_resource::
$expanddims_2_readvariableop_resource:
identity¢ExpandDims_1/ReadVariableOp¢ExpandDims_2/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :|

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ExpandDims_1/ReadVariableOpReadVariableOp$expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:
ExpandDims_2/ReadVariableOpReadVariableOp$expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_2
ExpandDims#ExpandDims_2/ReadVariableOp:value:0ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ê
separable_conv2d/depthwiseDepthwiseConv2dNativeExpandDims:output:0ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
Â
separable_conv2dConv2D#separable_conv2d/depthwise:output:0ExpandDims_2:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

SqueezeSqueezeseparable_conv2d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
l
IdentityIdentitySqueeze:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^ExpandDims_1/ReadVariableOp^ExpandDims_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2:
ExpandDims_2/ReadVariableOpExpandDims_2/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


+__inference_model_68_layer_call_fn_17001894

inputs
unknown: 
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:@
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:	

unknown_13:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*1
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_model_68_layer_call_and_return_conditional_losses_17001324o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð

6__inference_depthwise_conv1d_30_layer_call_fn_17002163

inputs
unknown:
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_depthwise_conv1d_30_layer_call_and_return_conditional_losses_17001143t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
g
K__inference_activation_57_layer_call_and_return_conditional_losses_17001274

inputs
identityH
EluEluinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]
IdentityIdentityElu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ê
³
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002359

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿<
²
F__inference_model_68_layer_call_and_return_conditional_losses_17001769
input_323
depthwise_conv1d_30_17001725:3
separable_conv1d_49_17001728:2
separable_conv1d_49_17001730:-
batch_normalization_56_17001733:-
batch_normalization_56_17001735:-
batch_normalization_56_17001737:-
batch_normalization_56_17001739:2
separable_conv1d_50_17001744:@2
separable_conv1d_50_17001746:-
batch_normalization_57_17001749:-
batch_normalization_57_17001751:-
batch_normalization_57_17001753:-
batch_normalization_57_17001755:!
dense_17001762:	
dense_17001764:
identity¢.batch_normalization_56/StatefulPartitionedCall¢.batch_normalization_57/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢+depthwise_conv1d_30/StatefulPartitionedCall¢+separable_conv1d_49/StatefulPartitionedCall¢+separable_conv1d_50/StatefulPartitionedCall
+depthwise_conv1d_30/StatefulPartitionedCallStatefulPartitionedCallinput_32depthwise_conv1d_30_17001725*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_depthwise_conv1d_30_layer_call_and_return_conditional_losses_17001143Ø
+separable_conv1d_49/StatefulPartitionedCallStatefulPartitionedCall4depthwise_conv1d_30/StatefulPartitionedCall:output:0separable_conv1d_49_17001728separable_conv1d_49_17001730*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17001165ª
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall4separable_conv1d_49/StatefulPartitionedCall:output:0batch_normalization_56_17001733batch_normalization_56_17001735batch_normalization_56_17001737batch_normalization_56_17001739*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17001190ý
activation_56/PartitionedCallPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_activation_56_layer_call_and_return_conditional_losses_17001205ù
$average_pooling1d_55/PartitionedCallPartitionedCall&activation_56/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17001214Ð
+separable_conv1d_50/StatefulPartitionedCallStatefulPartitionedCall-average_pooling1d_55/PartitionedCall:output:0separable_conv1d_50_17001744separable_conv1d_50_17001746*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17001234©
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall4separable_conv1d_50/StatefulPartitionedCall:output:0batch_normalization_57_17001749batch_normalization_57_17001751batch_normalization_57_17001753batch_normalization_57_17001755*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17001259ü
activation_57/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_activation_57_layer_call_and_return_conditional_losses_17001274ù
$average_pooling1d_56/PartitionedCallPartitionedCall&activation_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17001283ì
dropout_33/PartitionedCallPartitionedCall-average_pooling1d_56/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_33_layer_call_and_return_conditional_losses_17001290Ù
flatten/PartitionedCallPartitionedCall#dropout_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_17001298
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_17001762dense_17001764*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_17001310Û
softmax/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_softmax_layer_call_and_return_conditional_losses_17001321o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall^dense/StatefulPartitionedCall,^depthwise_conv1d_30/StatefulPartitionedCall,^separable_conv1d_49/StatefulPartitionedCall,^separable_conv1d_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : 2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2Z
+depthwise_conv1d_30/StatefulPartitionedCall+depthwise_conv1d_30/StatefulPartitionedCall2Z
+separable_conv1d_49/StatefulPartitionedCall+separable_conv1d_49/StatefulPartitionedCall2Z
+separable_conv1d_50/StatefulPartitionedCall+separable_conv1d_50/StatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_32
Õ
Ë
Q__inference_depthwise_conv1d_30_layer_call_and_return_conditional_losses_17002177

inputs;
$expanddims_1_readvariableop_resource:
identity¢ExpandDims_1/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :t

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ExpandDims_1/ReadVariableOpReadVariableOp$expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ±
	depthwiseDepthwiseConv2dNativeExpandDims:output:0ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
t
SqueezeSqueezedepthwise:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
d
IdentityIdentitySqueeze:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø
¥
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17002233

inputs;
$expanddims_1_readvariableop_resource::
$expanddims_2_readvariableop_resource:
identity¢ExpandDims_1/ReadVariableOp¢ExpandDims_2/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :t

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ExpandDims_1/ReadVariableOpReadVariableOp$expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:
ExpandDims_2/ReadVariableOpReadVariableOp$expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_2
ExpandDims#ExpandDims_2/ReadVariableOp:value:0ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Â
separable_conv2d/depthwiseDepthwiseConv2dNativeExpandDims:output:0ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
º
separable_conv2dConv2D#separable_conv2d/depthwise:output:0ExpandDims_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
{
SqueezeSqueezeseparable_conv2d:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
d
IdentityIdentitySqueeze:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^ExpandDims_1/ReadVariableOp^ExpandDims_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2:
ExpandDims_2/ReadVariableOpExpandDims_2/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

S
7__inference_average_pooling1d_55_layer_call_fn_17002408

inputs
identityÖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17000992v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î
¤
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17002485

inputs:
$expanddims_1_readvariableop_resource:@:
$expanddims_2_readvariableop_resource:
identity¢ExpandDims_1/ReadVariableOp¢ExpandDims_2/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :s

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
ExpandDims_1/ReadVariableOpReadVariableOp$expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@
ExpandDims_2/ReadVariableOpReadVariableOp$expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_2
ExpandDims#ExpandDims_2/ReadVariableOp:value:0ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   @         o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Á
separable_conv2d/depthwiseDepthwiseConv2dNativeExpandDims:output:0ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
¹
separable_conv2dConv2D#separable_conv2d/depthwise:output:0ExpandDims_2:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
z
SqueezeSqueezeseparable_conv2d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
c
IdentityIdentitySqueeze:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^ExpandDims_1/ReadVariableOp^ExpandDims_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2:
ExpandDims_2/ReadVariableOpExpandDims_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Î
a
E__inference_softmax_layer_call_and_return_conditional_losses_17002748

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

°
6__inference_separable_conv1d_49_layer_call_fn_17002195

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17001165t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
¯
6__inference_separable_conv1d_50_layer_call_fn_17002447

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17001234s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Å
Ô
9__inference_batch_normalization_56_layer_call_fn_17002272

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17001190t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å
³
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17001259

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ûÀ
Ü
F__inference_model_68_layer_call_and_return_conditional_losses_17002156

inputsO
8depthwise_conv1d_30_expanddims_1_readvariableop_resource:O
8separable_conv1d_49_expanddims_1_readvariableop_resource:N
8separable_conv1d_49_expanddims_2_readvariableop_resource:L
>batch_normalization_56_assignmovingavg_readvariableop_resource:N
@batch_normalization_56_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_56_batchnorm_mul_readvariableop_resource:F
8batch_normalization_56_batchnorm_readvariableop_resource:N
8separable_conv1d_50_expanddims_1_readvariableop_resource:@N
8separable_conv1d_50_expanddims_2_readvariableop_resource:L
>batch_normalization_57_assignmovingavg_readvariableop_resource:N
@batch_normalization_57_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_57_batchnorm_mul_readvariableop_resource:F
8batch_normalization_57_batchnorm_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:
identity¢&batch_normalization_56/AssignMovingAvg¢5batch_normalization_56/AssignMovingAvg/ReadVariableOp¢(batch_normalization_56/AssignMovingAvg_1¢7batch_normalization_56/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_56/batchnorm/ReadVariableOp¢3batch_normalization_56/batchnorm/mul/ReadVariableOp¢&batch_normalization_57/AssignMovingAvg¢5batch_normalization_57/AssignMovingAvg/ReadVariableOp¢(batch_normalization_57/AssignMovingAvg_1¢7batch_normalization_57/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_57/batchnorm/ReadVariableOp¢3batch_normalization_57/batchnorm/mul/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢/depthwise_conv1d_30/ExpandDims_1/ReadVariableOp¢/separable_conv1d_49/ExpandDims_1/ReadVariableOp¢/separable_conv1d_49/ExpandDims_2/ReadVariableOp¢/separable_conv1d_50/ExpandDims_1/ReadVariableOp¢/separable_conv1d_50/ExpandDims_2/ReadVariableOpd
"depthwise_conv1d_30/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
depthwise_conv1d_30/ExpandDims
ExpandDimsinputs+depthwise_conv1d_30/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
/depthwise_conv1d_30/ExpandDims_1/ReadVariableOpReadVariableOp8depthwise_conv1d_30_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0f
$depthwise_conv1d_30/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : È
 depthwise_conv1d_30/ExpandDims_1
ExpandDims7depthwise_conv1d_30/ExpandDims_1/ReadVariableOp:value:0-depthwise_conv1d_30/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:|
#depthwise_conv1d_30/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            |
+depthwise_conv1d_30/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      í
depthwise_conv1d_30/depthwiseDepthwiseConv2dNative'depthwise_conv1d_30/ExpandDims:output:0)depthwise_conv1d_30/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

depthwise_conv1d_30/SqueezeSqueeze&depthwise_conv1d_30/depthwise:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
d
"separable_conv1d_49/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :º
separable_conv1d_49/ExpandDims
ExpandDims$depthwise_conv1d_30/Squeeze:output:0+separable_conv1d_49/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
/separable_conv1d_49/ExpandDims_1/ReadVariableOpReadVariableOp8separable_conv1d_49_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0f
$separable_conv1d_49/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : È
 separable_conv1d_49/ExpandDims_1
ExpandDims7separable_conv1d_49/ExpandDims_1/ReadVariableOp:value:0-separable_conv1d_49/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:¬
/separable_conv1d_49/ExpandDims_2/ReadVariableOpReadVariableOp8separable_conv1d_49_expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0f
$separable_conv1d_49/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : Ç
 separable_conv1d_49/ExpandDims_2
ExpandDims7separable_conv1d_49/ExpandDims_2/ReadVariableOp:value:0-separable_conv1d_49/ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:
*separable_conv1d_49/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
2separable_conv1d_49/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      þ
.separable_conv1d_49/separable_conv2d/depthwiseDepthwiseConv2dNative'separable_conv1d_49/ExpandDims:output:0)separable_conv1d_49/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
ö
$separable_conv1d_49/separable_conv2dConv2D7separable_conv1d_49/separable_conv2d/depthwise:output:0)separable_conv1d_49/ExpandDims_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
£
separable_conv1d_49/SqueezeSqueeze-separable_conv1d_49/separable_conv2d:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

5batch_normalization_56/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ï
#batch_normalization_56/moments/meanMean$separable_conv1d_49/Squeeze:output:0>batch_normalization_56/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
+batch_normalization_56/moments/StopGradientStopGradient,batch_normalization_56/moments/mean:output:0*
T0*"
_output_shapes
:Ø
0batch_normalization_56/moments/SquaredDifferenceSquaredDifference$separable_conv1d_49/Squeeze:output:04batch_normalization_56/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9batch_normalization_56/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ç
'batch_normalization_56/moments/varianceMean4batch_normalization_56/moments/SquaredDifference:z:0Bbatch_normalization_56/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
&batch_normalization_56/moments/SqueezeSqueeze,batch_normalization_56/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 ¢
(batch_normalization_56/moments/Squeeze_1Squeeze0batch_normalization_56/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_56/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<°
5batch_normalization_56/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_56_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Æ
*batch_normalization_56/AssignMovingAvg/subSub=batch_normalization_56/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_56/moments/Squeeze:output:0*
T0*
_output_shapes
:½
*batch_normalization_56/AssignMovingAvg/mulMul.batch_normalization_56/AssignMovingAvg/sub:z:05batch_normalization_56/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
&batch_normalization_56/AssignMovingAvgAssignSubVariableOp>batch_normalization_56_assignmovingavg_readvariableop_resource.batch_normalization_56/AssignMovingAvg/mul:z:06^batch_normalization_56/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_56/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<´
7batch_normalization_56/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_56_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Ì
,batch_normalization_56/AssignMovingAvg_1/subSub?batch_normalization_56/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_56/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Ã
,batch_normalization_56/AssignMovingAvg_1/mulMul0batch_normalization_56/AssignMovingAvg_1/sub:z:07batch_normalization_56/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
(batch_normalization_56/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_56_assignmovingavg_1_readvariableop_resource0batch_normalization_56/AssignMovingAvg_1/mul:z:08^batch_normalization_56/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_56/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
$batch_normalization_56/batchnorm/addAddV21batch_normalization_56/moments/Squeeze_1:output:0/batch_normalization_56/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_56/batchnorm/RsqrtRsqrt(batch_normalization_56/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_56/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_56_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¹
$batch_normalization_56/batchnorm/mulMul*batch_normalization_56/batchnorm/Rsqrt:y:0;batch_normalization_56/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:´
&batch_normalization_56/batchnorm/mul_1Mul$separable_conv1d_49/Squeeze:output:0(batch_normalization_56/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
&batch_normalization_56/batchnorm/mul_2Mul/batch_normalization_56/moments/Squeeze:output:0(batch_normalization_56/batchnorm/mul:z:0*
T0*
_output_shapes
:¤
/batch_normalization_56/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_56_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0µ
$batch_normalization_56/batchnorm/subSub7batch_normalization_56/batchnorm/ReadVariableOp:value:0*batch_normalization_56/batchnorm/mul_2:z:0*
T0*
_output_shapes
:¼
&batch_normalization_56/batchnorm/add_1AddV2*batch_normalization_56/batchnorm/mul_1:z:0(batch_normalization_56/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
activation_56/EluElu*batch_normalization_56/batchnorm/add_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#average_pooling1d_55/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :·
average_pooling1d_55/ExpandDims
ExpandDimsactivation_56/Elu:activations:0,average_pooling1d_55/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
average_pooling1d_55/AvgPoolAvgPool(average_pooling1d_55/ExpandDims:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides

average_pooling1d_55/SqueezeSqueeze%average_pooling1d_55/AvgPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
d
"separable_conv1d_50/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :º
separable_conv1d_50/ExpandDims
ExpandDims%average_pooling1d_55/Squeeze:output:0+separable_conv1d_50/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
/separable_conv1d_50/ExpandDims_1/ReadVariableOpReadVariableOp8separable_conv1d_50_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0f
$separable_conv1d_50/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ç
 separable_conv1d_50/ExpandDims_1
ExpandDims7separable_conv1d_50/ExpandDims_1/ReadVariableOp:value:0-separable_conv1d_50/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@¬
/separable_conv1d_50/ExpandDims_2/ReadVariableOpReadVariableOp8separable_conv1d_50_expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0f
$separable_conv1d_50/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : Ç
 separable_conv1d_50/ExpandDims_2
ExpandDims7separable_conv1d_50/ExpandDims_2/ReadVariableOp:value:0-separable_conv1d_50/ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:
*separable_conv1d_50/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   @         
2separable_conv1d_50/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ý
.separable_conv1d_50/separable_conv2d/depthwiseDepthwiseConv2dNative'separable_conv1d_50/ExpandDims:output:0)separable_conv1d_50/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
õ
$separable_conv1d_50/separable_conv2dConv2D7separable_conv1d_50/separable_conv2d/depthwise:output:0)separable_conv1d_50/ExpandDims_2:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
¢
separable_conv1d_50/SqueezeSqueeze-separable_conv1d_50/separable_conv2d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

5batch_normalization_57/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ï
#batch_normalization_57/moments/meanMean$separable_conv1d_50/Squeeze:output:0>batch_normalization_57/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
+batch_normalization_57/moments/StopGradientStopGradient,batch_normalization_57/moments/mean:output:0*
T0*"
_output_shapes
:×
0batch_normalization_57/moments/SquaredDifferenceSquaredDifference$separable_conv1d_50/Squeeze:output:04batch_normalization_57/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
9batch_normalization_57/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ç
'batch_normalization_57/moments/varianceMean4batch_normalization_57/moments/SquaredDifference:z:0Bbatch_normalization_57/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
&batch_normalization_57/moments/SqueezeSqueeze,batch_normalization_57/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 ¢
(batch_normalization_57/moments/Squeeze_1Squeeze0batch_normalization_57/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_57/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<°
5batch_normalization_57/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_57_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Æ
*batch_normalization_57/AssignMovingAvg/subSub=batch_normalization_57/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_57/moments/Squeeze:output:0*
T0*
_output_shapes
:½
*batch_normalization_57/AssignMovingAvg/mulMul.batch_normalization_57/AssignMovingAvg/sub:z:05batch_normalization_57/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
&batch_normalization_57/AssignMovingAvgAssignSubVariableOp>batch_normalization_57_assignmovingavg_readvariableop_resource.batch_normalization_57/AssignMovingAvg/mul:z:06^batch_normalization_57/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_57/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<´
7batch_normalization_57/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_57_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Ì
,batch_normalization_57/AssignMovingAvg_1/subSub?batch_normalization_57/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_57/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Ã
,batch_normalization_57/AssignMovingAvg_1/mulMul0batch_normalization_57/AssignMovingAvg_1/sub:z:07batch_normalization_57/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
(batch_normalization_57/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_57_assignmovingavg_1_readvariableop_resource0batch_normalization_57/AssignMovingAvg_1/mul:z:08^batch_normalization_57/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_57/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
$batch_normalization_57/batchnorm/addAddV21batch_normalization_57/moments/Squeeze_1:output:0/batch_normalization_57/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_57/batchnorm/RsqrtRsqrt(batch_normalization_57/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_57/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_57_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¹
$batch_normalization_57/batchnorm/mulMul*batch_normalization_57/batchnorm/Rsqrt:y:0;batch_normalization_57/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:³
&batch_normalization_57/batchnorm/mul_1Mul$separable_conv1d_50/Squeeze:output:0(batch_normalization_57/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@­
&batch_normalization_57/batchnorm/mul_2Mul/batch_normalization_57/moments/Squeeze:output:0(batch_normalization_57/batchnorm/mul:z:0*
T0*
_output_shapes
:¤
/batch_normalization_57/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_57_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0µ
$batch_normalization_57/batchnorm/subSub7batch_normalization_57/batchnorm/ReadVariableOp:value:0*batch_normalization_57/batchnorm/mul_2:z:0*
T0*
_output_shapes
:»
&batch_normalization_57/batchnorm/add_1AddV2*batch_normalization_57/batchnorm/mul_1:z:0(batch_normalization_57/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
activation_57/EluElu*batch_normalization_57/batchnorm/add_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
#average_pooling1d_56/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :¶
average_pooling1d_56/ExpandDims
ExpandDimsactivation_57/Elu:activations:0,average_pooling1d_56/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ç
average_pooling1d_56/AvgPoolAvgPool(average_pooling1d_56/ExpandDims:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

average_pooling1d_56/SqueezeSqueeze%average_pooling1d_56/AvgPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
]
dropout_33/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_33/dropout/MulMul%average_pooling1d_56/Squeeze:output:0!dropout_33/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout_33/dropout/ShapeShape%average_pooling1d_56/Squeeze:output:0*
T0*
_output_shapes
:¦
/dropout_33/dropout/random_uniform/RandomUniformRandomUniform!dropout_33/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0f
!dropout_33/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_33/dropout/GreaterEqualGreaterEqual8dropout_33/dropout/random_uniform/RandomUniform:output:0*dropout_33/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_33/dropout/CastCast#dropout_33/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_33/dropout/Mul_1Muldropout_33/dropout/Mul:z:0dropout_33/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten/ReshapeReshapedropout_33/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
softmax/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitysoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
NoOpNoOp'^batch_normalization_56/AssignMovingAvg6^batch_normalization_56/AssignMovingAvg/ReadVariableOp)^batch_normalization_56/AssignMovingAvg_18^batch_normalization_56/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_56/batchnorm/ReadVariableOp4^batch_normalization_56/batchnorm/mul/ReadVariableOp'^batch_normalization_57/AssignMovingAvg6^batch_normalization_57/AssignMovingAvg/ReadVariableOp)^batch_normalization_57/AssignMovingAvg_18^batch_normalization_57/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_57/batchnorm/ReadVariableOp4^batch_normalization_57/batchnorm/mul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp0^depthwise_conv1d_30/ExpandDims_1/ReadVariableOp0^separable_conv1d_49/ExpandDims_1/ReadVariableOp0^separable_conv1d_49/ExpandDims_2/ReadVariableOp0^separable_conv1d_50/ExpandDims_1/ReadVariableOp0^separable_conv1d_50/ExpandDims_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : 2P
&batch_normalization_56/AssignMovingAvg&batch_normalization_56/AssignMovingAvg2n
5batch_normalization_56/AssignMovingAvg/ReadVariableOp5batch_normalization_56/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_56/AssignMovingAvg_1(batch_normalization_56/AssignMovingAvg_12r
7batch_normalization_56/AssignMovingAvg_1/ReadVariableOp7batch_normalization_56/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_56/batchnorm/ReadVariableOp/batch_normalization_56/batchnorm/ReadVariableOp2j
3batch_normalization_56/batchnorm/mul/ReadVariableOp3batch_normalization_56/batchnorm/mul/ReadVariableOp2P
&batch_normalization_57/AssignMovingAvg&batch_normalization_57/AssignMovingAvg2n
5batch_normalization_57/AssignMovingAvg/ReadVariableOp5batch_normalization_57/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_57/AssignMovingAvg_1(batch_normalization_57/AssignMovingAvg_12r
7batch_normalization_57/AssignMovingAvg_1/ReadVariableOp7batch_normalization_57/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_57/batchnorm/ReadVariableOp/batch_normalization_57/batchnorm/ReadVariableOp2j
3batch_normalization_57/batchnorm/mul/ReadVariableOp3batch_normalization_57/batchnorm/mul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2b
/depthwise_conv1d_30/ExpandDims_1/ReadVariableOp/depthwise_conv1d_30/ExpandDims_1/ReadVariableOp2b
/separable_conv1d_49/ExpandDims_1/ReadVariableOp/separable_conv1d_49/ExpandDims_1/ReadVariableOp2b
/separable_conv1d_49/ExpandDims_2/ReadVariableOp/separable_conv1d_49/ExpandDims_2/ReadVariableOp2b
/separable_conv1d_50/ExpandDims_1/ReadVariableOp/separable_conv1d_50/ExpandDims_1/ReadVariableOp2b
/separable_conv1d_50/ExpandDims_2/ReadVariableOp/separable_conv1d_50/ExpandDims_2/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
a
E__inference_flatten_layer_call_and_return_conditional_losses_17002719

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

³
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17000922

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_33_layer_call_and_return_conditional_losses_17002696

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
éf

!__inference__traced_save_17002909
file_prefixC
?savev2_depthwise_conv1d_30_depthwise_kernel_read_readvariableopC
?savev2_separable_conv1d_49_depthwise_kernel_read_readvariableopC
?savev2_separable_conv1d_49_pointwise_kernel_read_readvariableop;
7savev2_batch_normalization_56_gamma_read_readvariableop:
6savev2_batch_normalization_56_beta_read_readvariableopA
=savev2_batch_normalization_56_moving_mean_read_readvariableopE
Asavev2_batch_normalization_56_moving_variance_read_readvariableopC
?savev2_separable_conv1d_50_depthwise_kernel_read_readvariableopC
?savev2_separable_conv1d_50_pointwise_kernel_read_readvariableop;
7savev2_batch_normalization_57_gamma_read_readvariableop:
6savev2_batch_normalization_57_beta_read_readvariableopA
=savev2_batch_normalization_57_moving_mean_read_readvariableopE
Asavev2_batch_normalization_57_moving_variance_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopJ
Fsavev2_adam_depthwise_conv1d_30_depthwise_kernel_m_read_readvariableopJ
Fsavev2_adam_separable_conv1d_49_depthwise_kernel_m_read_readvariableopJ
Fsavev2_adam_separable_conv1d_49_pointwise_kernel_m_read_readvariableopB
>savev2_adam_batch_normalization_56_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_56_beta_m_read_readvariableopJ
Fsavev2_adam_separable_conv1d_50_depthwise_kernel_m_read_readvariableopJ
Fsavev2_adam_separable_conv1d_50_pointwise_kernel_m_read_readvariableopB
>savev2_adam_batch_normalization_57_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_57_beta_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableopJ
Fsavev2_adam_depthwise_conv1d_30_depthwise_kernel_v_read_readvariableopJ
Fsavev2_adam_separable_conv1d_49_depthwise_kernel_v_read_readvariableopJ
Fsavev2_adam_separable_conv1d_49_pointwise_kernel_v_read_readvariableopB
>savev2_adam_batch_normalization_56_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_56_beta_v_read_readvariableopJ
Fsavev2_adam_separable_conv1d_50_depthwise_kernel_v_read_readvariableopJ
Fsavev2_adam_separable_conv1d_50_pointwise_kernel_v_read_readvariableopB
>savev2_adam_batch_normalization_57_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_57_beta_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: á
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*
valueBý/B@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHË
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¹
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0?savev2_depthwise_conv1d_30_depthwise_kernel_read_readvariableop?savev2_separable_conv1d_49_depthwise_kernel_read_readvariableop?savev2_separable_conv1d_49_pointwise_kernel_read_readvariableop7savev2_batch_normalization_56_gamma_read_readvariableop6savev2_batch_normalization_56_beta_read_readvariableop=savev2_batch_normalization_56_moving_mean_read_readvariableopAsavev2_batch_normalization_56_moving_variance_read_readvariableop?savev2_separable_conv1d_50_depthwise_kernel_read_readvariableop?savev2_separable_conv1d_50_pointwise_kernel_read_readvariableop7savev2_batch_normalization_57_gamma_read_readvariableop6savev2_batch_normalization_57_beta_read_readvariableop=savev2_batch_normalization_57_moving_mean_read_readvariableopAsavev2_batch_normalization_57_moving_variance_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopFsavev2_adam_depthwise_conv1d_30_depthwise_kernel_m_read_readvariableopFsavev2_adam_separable_conv1d_49_depthwise_kernel_m_read_readvariableopFsavev2_adam_separable_conv1d_49_pointwise_kernel_m_read_readvariableop>savev2_adam_batch_normalization_56_gamma_m_read_readvariableop=savev2_adam_batch_normalization_56_beta_m_read_readvariableopFsavev2_adam_separable_conv1d_50_depthwise_kernel_m_read_readvariableopFsavev2_adam_separable_conv1d_50_pointwise_kernel_m_read_readvariableop>savev2_adam_batch_normalization_57_gamma_m_read_readvariableop=savev2_adam_batch_normalization_57_beta_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableopFsavev2_adam_depthwise_conv1d_30_depthwise_kernel_v_read_readvariableopFsavev2_adam_separable_conv1d_49_depthwise_kernel_v_read_readvariableopFsavev2_adam_separable_conv1d_49_pointwise_kernel_v_read_readvariableop>savev2_adam_batch_normalization_56_gamma_v_read_readvariableop=savev2_adam_batch_normalization_56_beta_v_read_readvariableopFsavev2_adam_separable_conv1d_50_depthwise_kernel_v_read_readvariableopFsavev2_adam_separable_conv1d_50_pointwise_kernel_v_read_readvariableop>savev2_adam_batch_normalization_57_gamma_v_read_readvariableop=savev2_adam_batch_normalization_57_beta_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *=
dtypes3
12/	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: ::::::::@::::::	:: : : : : : : : : ::::::@::::	:::::::@::::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_output_shapes
::)%
#
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:@:(	$
"
_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :)%
#
_output_shapes
::)%
#
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:@:($
"
_output_shapes
::  

_output_shapes
:: !

_output_shapes
::%"!

_output_shapes
:	: #

_output_shapes
::)$%
#
_output_shapes
::)%%
#
_output_shapes
::(&$
"
_output_shapes
:: '

_output_shapes
:: (

_output_shapes
::()$
"
_output_shapes
:@:(*$
"
_output_shapes
:: +

_output_shapes
:: ,

_output_shapes
::%-!

_output_shapes
:	: .

_output_shapes
::/

_output_shapes
: 
 
°
6__inference_separable_conv1d_49_layer_call_fn_17002186

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17000891|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì
S
7__inference_average_pooling1d_56_layer_call_fn_17002665

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17001283d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
à
g
K__inference_activation_56_layer_call_and_return_conditional_losses_17001205

inputs
identityI
EluEluinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
IdentityIdentityElu:activations:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â
L
0__inference_activation_56_layer_call_fn_17002398

inputs
identity¾
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_activation_56_layer_call_and_return_conditional_losses_17001205e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
F
*__inference_softmax_layer_call_fn_17002743

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_softmax_layer_call_and_return_conditional_losses_17001321`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


+__inference_model_68_layer_call_fn_17001722
input_32
unknown: 
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:@
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:	

unknown_13:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_32unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_model_68_layer_call_and_return_conditional_losses_17001654o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_32


+__inference_model_68_layer_call_fn_17001357
input_32
unknown: 
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:@
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:	

unknown_13:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_32unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*1
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_model_68_layer_call_and_return_conditional_losses_17001324o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_32
à
n
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17000992

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à
n
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17002673

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê	
õ
C__inference_dense_layer_call_and_return_conditional_losses_17001310

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î
a
E__inference_softmax_layer_call_and_return_conditional_losses_17001321

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

³
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17001049

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ù
#__inference__wrapped_model_17000868
input_32X
Amodel_68_depthwise_conv1d_30_expanddims_1_readvariableop_resource:X
Amodel_68_separable_conv1d_49_expanddims_1_readvariableop_resource:W
Amodel_68_separable_conv1d_49_expanddims_2_readvariableop_resource:O
Amodel_68_batch_normalization_56_batchnorm_readvariableop_resource:S
Emodel_68_batch_normalization_56_batchnorm_mul_readvariableop_resource:Q
Cmodel_68_batch_normalization_56_batchnorm_readvariableop_1_resource:Q
Cmodel_68_batch_normalization_56_batchnorm_readvariableop_2_resource:W
Amodel_68_separable_conv1d_50_expanddims_1_readvariableop_resource:@W
Amodel_68_separable_conv1d_50_expanddims_2_readvariableop_resource:O
Amodel_68_batch_normalization_57_batchnorm_readvariableop_resource:S
Emodel_68_batch_normalization_57_batchnorm_mul_readvariableop_resource:Q
Cmodel_68_batch_normalization_57_batchnorm_readvariableop_1_resource:Q
Cmodel_68_batch_normalization_57_batchnorm_readvariableop_2_resource:@
-model_68_dense_matmul_readvariableop_resource:	<
.model_68_dense_biasadd_readvariableop_resource:
identity¢8model_68/batch_normalization_56/batchnorm/ReadVariableOp¢:model_68/batch_normalization_56/batchnorm/ReadVariableOp_1¢:model_68/batch_normalization_56/batchnorm/ReadVariableOp_2¢<model_68/batch_normalization_56/batchnorm/mul/ReadVariableOp¢8model_68/batch_normalization_57/batchnorm/ReadVariableOp¢:model_68/batch_normalization_57/batchnorm/ReadVariableOp_1¢:model_68/batch_normalization_57/batchnorm/ReadVariableOp_2¢<model_68/batch_normalization_57/batchnorm/mul/ReadVariableOp¢%model_68/dense/BiasAdd/ReadVariableOp¢$model_68/dense/MatMul/ReadVariableOp¢8model_68/depthwise_conv1d_30/ExpandDims_1/ReadVariableOp¢8model_68/separable_conv1d_49/ExpandDims_1/ReadVariableOp¢8model_68/separable_conv1d_49/ExpandDims_2/ReadVariableOp¢8model_68/separable_conv1d_50/ExpandDims_1/ReadVariableOp¢8model_68/separable_conv1d_50/ExpandDims_2/ReadVariableOpm
+model_68/depthwise_conv1d_30/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :°
'model_68/depthwise_conv1d_30/ExpandDims
ExpandDimsinput_324model_68/depthwise_conv1d_30/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
8model_68/depthwise_conv1d_30/ExpandDims_1/ReadVariableOpReadVariableOpAmodel_68_depthwise_conv1d_30_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0o
-model_68/depthwise_conv1d_30/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ã
)model_68/depthwise_conv1d_30/ExpandDims_1
ExpandDims@model_68/depthwise_conv1d_30/ExpandDims_1/ReadVariableOp:value:06model_68/depthwise_conv1d_30/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:
,model_68/depthwise_conv1d_30/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
4model_68/depthwise_conv1d_30/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
&model_68/depthwise_conv1d_30/depthwiseDepthwiseConv2dNative0model_68/depthwise_conv1d_30/ExpandDims:output:02model_68/depthwise_conv1d_30/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
®
$model_68/depthwise_conv1d_30/SqueezeSqueeze/model_68/depthwise_conv1d_30/depthwise:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
m
+model_68/separable_conv1d_49/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Õ
'model_68/separable_conv1d_49/ExpandDims
ExpandDims-model_68/depthwise_conv1d_30/Squeeze:output:04model_68/separable_conv1d_49/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
8model_68/separable_conv1d_49/ExpandDims_1/ReadVariableOpReadVariableOpAmodel_68_separable_conv1d_49_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0o
-model_68/separable_conv1d_49/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ã
)model_68/separable_conv1d_49/ExpandDims_1
ExpandDims@model_68/separable_conv1d_49/ExpandDims_1/ReadVariableOp:value:06model_68/separable_conv1d_49/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:¾
8model_68/separable_conv1d_49/ExpandDims_2/ReadVariableOpReadVariableOpAmodel_68_separable_conv1d_49_expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0o
-model_68/separable_conv1d_49/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : â
)model_68/separable_conv1d_49/ExpandDims_2
ExpandDims@model_68/separable_conv1d_49/ExpandDims_2/ReadVariableOp:value:06model_68/separable_conv1d_49/ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:
3model_68/separable_conv1d_49/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
;model_68/separable_conv1d_49/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
7model_68/separable_conv1d_49/separable_conv2d/depthwiseDepthwiseConv2dNative0model_68/separable_conv1d_49/ExpandDims:output:02model_68/separable_conv1d_49/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

-model_68/separable_conv1d_49/separable_conv2dConv2D@model_68/separable_conv1d_49/separable_conv2d/depthwise:output:02model_68/separable_conv1d_49/ExpandDims_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
µ
$model_68/separable_conv1d_49/SqueezeSqueeze6model_68/separable_conv1d_49/separable_conv2d:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
¶
8model_68/batch_normalization_56/batchnorm/ReadVariableOpReadVariableOpAmodel_68_batch_normalization_56_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0t
/model_68/batch_normalization_56/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:×
-model_68/batch_normalization_56/batchnorm/addAddV2@model_68/batch_normalization_56/batchnorm/ReadVariableOp:value:08model_68/batch_normalization_56/batchnorm/add/y:output:0*
T0*
_output_shapes
:
/model_68/batch_normalization_56/batchnorm/RsqrtRsqrt1model_68/batch_normalization_56/batchnorm/add:z:0*
T0*
_output_shapes
:¾
<model_68/batch_normalization_56/batchnorm/mul/ReadVariableOpReadVariableOpEmodel_68_batch_normalization_56_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ô
-model_68/batch_normalization_56/batchnorm/mulMul3model_68/batch_normalization_56/batchnorm/Rsqrt:y:0Dmodel_68/batch_normalization_56/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ï
/model_68/batch_normalization_56/batchnorm/mul_1Mul-model_68/separable_conv1d_49/Squeeze:output:01model_68/batch_normalization_56/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
:model_68/batch_normalization_56/batchnorm/ReadVariableOp_1ReadVariableOpCmodel_68_batch_normalization_56_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ò
/model_68/batch_normalization_56/batchnorm/mul_2MulBmodel_68/batch_normalization_56/batchnorm/ReadVariableOp_1:value:01model_68/batch_normalization_56/batchnorm/mul:z:0*
T0*
_output_shapes
:º
:model_68/batch_normalization_56/batchnorm/ReadVariableOp_2ReadVariableOpCmodel_68_batch_normalization_56_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ò
-model_68/batch_normalization_56/batchnorm/subSubBmodel_68/batch_normalization_56/batchnorm/ReadVariableOp_2:value:03model_68/batch_normalization_56/batchnorm/mul_2:z:0*
T0*
_output_shapes
:×
/model_68/batch_normalization_56/batchnorm/add_1AddV23model_68/batch_normalization_56/batchnorm/mul_1:z:01model_68/batch_normalization_56/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_68/activation_56/EluElu3model_68/batch_normalization_56/batchnorm/add_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
,model_68/average_pooling1d_55/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ò
(model_68/average_pooling1d_55/ExpandDims
ExpandDims(model_68/activation_56/Elu:activations:05model_68/average_pooling1d_55/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
%model_68/average_pooling1d_55/AvgPoolAvgPool1model_68/average_pooling1d_55/ExpandDims:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
­
%model_68/average_pooling1d_55/SqueezeSqueeze.model_68/average_pooling1d_55/AvgPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
m
+model_68/separable_conv1d_50/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Õ
'model_68/separable_conv1d_50/ExpandDims
ExpandDims.model_68/average_pooling1d_55/Squeeze:output:04model_68/separable_conv1d_50/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¾
8model_68/separable_conv1d_50/ExpandDims_1/ReadVariableOpReadVariableOpAmodel_68_separable_conv1d_50_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0o
-model_68/separable_conv1d_50/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : â
)model_68/separable_conv1d_50/ExpandDims_1
ExpandDims@model_68/separable_conv1d_50/ExpandDims_1/ReadVariableOp:value:06model_68/separable_conv1d_50/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@¾
8model_68/separable_conv1d_50/ExpandDims_2/ReadVariableOpReadVariableOpAmodel_68_separable_conv1d_50_expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0o
-model_68/separable_conv1d_50/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : â
)model_68/separable_conv1d_50/ExpandDims_2
ExpandDims@model_68/separable_conv1d_50/ExpandDims_2/ReadVariableOp:value:06model_68/separable_conv1d_50/ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:
3model_68/separable_conv1d_50/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   @         
;model_68/separable_conv1d_50/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
7model_68/separable_conv1d_50/separable_conv2d/depthwiseDepthwiseConv2dNative0model_68/separable_conv1d_50/ExpandDims:output:02model_68/separable_conv1d_50/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

-model_68/separable_conv1d_50/separable_conv2dConv2D@model_68/separable_conv1d_50/separable_conv2d/depthwise:output:02model_68/separable_conv1d_50/ExpandDims_2:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
´
$model_68/separable_conv1d_50/SqueezeSqueeze6model_68/separable_conv1d_50/separable_conv2d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
¶
8model_68/batch_normalization_57/batchnorm/ReadVariableOpReadVariableOpAmodel_68_batch_normalization_57_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0t
/model_68/batch_normalization_57/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:×
-model_68/batch_normalization_57/batchnorm/addAddV2@model_68/batch_normalization_57/batchnorm/ReadVariableOp:value:08model_68/batch_normalization_57/batchnorm/add/y:output:0*
T0*
_output_shapes
:
/model_68/batch_normalization_57/batchnorm/RsqrtRsqrt1model_68/batch_normalization_57/batchnorm/add:z:0*
T0*
_output_shapes
:¾
<model_68/batch_normalization_57/batchnorm/mul/ReadVariableOpReadVariableOpEmodel_68_batch_normalization_57_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ô
-model_68/batch_normalization_57/batchnorm/mulMul3model_68/batch_normalization_57/batchnorm/Rsqrt:y:0Dmodel_68/batch_normalization_57/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Î
/model_68/batch_normalization_57/batchnorm/mul_1Mul-model_68/separable_conv1d_50/Squeeze:output:01model_68/batch_normalization_57/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
:model_68/batch_normalization_57/batchnorm/ReadVariableOp_1ReadVariableOpCmodel_68_batch_normalization_57_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ò
/model_68/batch_normalization_57/batchnorm/mul_2MulBmodel_68/batch_normalization_57/batchnorm/ReadVariableOp_1:value:01model_68/batch_normalization_57/batchnorm/mul:z:0*
T0*
_output_shapes
:º
:model_68/batch_normalization_57/batchnorm/ReadVariableOp_2ReadVariableOpCmodel_68_batch_normalization_57_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ò
-model_68/batch_normalization_57/batchnorm/subSubBmodel_68/batch_normalization_57/batchnorm/ReadVariableOp_2:value:03model_68/batch_normalization_57/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Ö
/model_68/batch_normalization_57/batchnorm/add_1AddV23model_68/batch_normalization_57/batchnorm/mul_1:z:01model_68/batch_normalization_57/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
model_68/activation_57/EluElu3model_68/batch_normalization_57/batchnorm/add_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
,model_68/average_pooling1d_56/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ñ
(model_68/average_pooling1d_56/ExpandDims
ExpandDims(model_68/activation_57/Elu:activations:05model_68/average_pooling1d_56/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ù
%model_68/average_pooling1d_56/AvgPoolAvgPool1model_68/average_pooling1d_56/ExpandDims:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
­
%model_68/average_pooling1d_56/SqueezeSqueeze.model_68/average_pooling1d_56/AvgPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

model_68/dropout_33/IdentityIdentity.model_68/average_pooling1d_56/Squeeze:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
model_68/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
model_68/flatten/ReshapeReshape%model_68/dropout_33/Identity:output:0model_68/flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$model_68/dense/MatMul/ReadVariableOpReadVariableOp-model_68_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0¢
model_68/dense/MatMulMatMul!model_68/flatten/Reshape:output:0,model_68/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%model_68/dense/BiasAdd/ReadVariableOpReadVariableOp.model_68_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0£
model_68/dense/BiasAddBiasAddmodel_68/dense/MatMul:product:0-model_68/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
model_68/softmax/SoftmaxSoftmaxmodel_68/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
IdentityIdentity"model_68/softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
NoOpNoOp9^model_68/batch_normalization_56/batchnorm/ReadVariableOp;^model_68/batch_normalization_56/batchnorm/ReadVariableOp_1;^model_68/batch_normalization_56/batchnorm/ReadVariableOp_2=^model_68/batch_normalization_56/batchnorm/mul/ReadVariableOp9^model_68/batch_normalization_57/batchnorm/ReadVariableOp;^model_68/batch_normalization_57/batchnorm/ReadVariableOp_1;^model_68/batch_normalization_57/batchnorm/ReadVariableOp_2=^model_68/batch_normalization_57/batchnorm/mul/ReadVariableOp&^model_68/dense/BiasAdd/ReadVariableOp%^model_68/dense/MatMul/ReadVariableOp9^model_68/depthwise_conv1d_30/ExpandDims_1/ReadVariableOp9^model_68/separable_conv1d_49/ExpandDims_1/ReadVariableOp9^model_68/separable_conv1d_49/ExpandDims_2/ReadVariableOp9^model_68/separable_conv1d_50/ExpandDims_1/ReadVariableOp9^model_68/separable_conv1d_50/ExpandDims_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : 2t
8model_68/batch_normalization_56/batchnorm/ReadVariableOp8model_68/batch_normalization_56/batchnorm/ReadVariableOp2x
:model_68/batch_normalization_56/batchnorm/ReadVariableOp_1:model_68/batch_normalization_56/batchnorm/ReadVariableOp_12x
:model_68/batch_normalization_56/batchnorm/ReadVariableOp_2:model_68/batch_normalization_56/batchnorm/ReadVariableOp_22|
<model_68/batch_normalization_56/batchnorm/mul/ReadVariableOp<model_68/batch_normalization_56/batchnorm/mul/ReadVariableOp2t
8model_68/batch_normalization_57/batchnorm/ReadVariableOp8model_68/batch_normalization_57/batchnorm/ReadVariableOp2x
:model_68/batch_normalization_57/batchnorm/ReadVariableOp_1:model_68/batch_normalization_57/batchnorm/ReadVariableOp_12x
:model_68/batch_normalization_57/batchnorm/ReadVariableOp_2:model_68/batch_normalization_57/batchnorm/ReadVariableOp_22|
<model_68/batch_normalization_57/batchnorm/mul/ReadVariableOp<model_68/batch_normalization_57/batchnorm/mul/ReadVariableOp2N
%model_68/dense/BiasAdd/ReadVariableOp%model_68/dense/BiasAdd/ReadVariableOp2L
$model_68/dense/MatMul/ReadVariableOp$model_68/dense/MatMul/ReadVariableOp2t
8model_68/depthwise_conv1d_30/ExpandDims_1/ReadVariableOp8model_68/depthwise_conv1d_30/ExpandDims_1/ReadVariableOp2t
8model_68/separable_conv1d_49/ExpandDims_1/ReadVariableOp8model_68/separable_conv1d_49/ExpandDims_1/ReadVariableOp2t
8model_68/separable_conv1d_49/ExpandDims_2/ReadVariableOp8model_68/separable_conv1d_49/ExpandDims_2/ReadVariableOp2t
8model_68/separable_conv1d_50/ExpandDims_1/ReadVariableOp8model_68/separable_conv1d_50/ExpandDims_1/ReadVariableOp2t
8model_68/separable_conv1d_50/ExpandDims_2/ReadVariableOp8model_68/separable_conv1d_50/ExpandDims_2/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_32
õ
n
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17001214

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :t

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
AvgPoolAvgPoolExpandDims:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
q
SqueezeSqueezeAvgPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
\
IdentityIdentitySqueeze:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê	
õ
C__inference_dense_layer_call_and_return_conditional_losses_17002738

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
Ô
9__inference_batch_normalization_57_layer_call_fn_17002511

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17001096|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¤
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17001018

inputs:
$expanddims_1_readvariableop_resource:@:
$expanddims_2_readvariableop_resource:
identity¢ExpandDims_1/ReadVariableOp¢ExpandDims_2/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :|

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ExpandDims_1/ReadVariableOpReadVariableOp$expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@
ExpandDims_2/ReadVariableOpReadVariableOp$expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_2
ExpandDims#ExpandDims_2/ReadVariableOp:value:0ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   @         o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ê
separable_conv2d/depthwiseDepthwiseConv2dNativeExpandDims:output:0ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
Â
separable_conv2dConv2D#separable_conv2d/depthwise:output:0ExpandDims_2:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

SqueezeSqueezeseparable_conv2d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
l
IdentityIdentitySqueeze:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^ExpandDims_1/ReadVariableOp^ExpandDims_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2:
ExpandDims_2/ReadVariableOpExpandDims_2/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
òÀ
­ 
$__inference__traced_restore_17003057
file_prefixL
5assignvariableop_depthwise_conv1d_30_depthwise_kernel:N
7assignvariableop_1_separable_conv1d_49_depthwise_kernel:M
7assignvariableop_2_separable_conv1d_49_pointwise_kernel:=
/assignvariableop_3_batch_normalization_56_gamma:<
.assignvariableop_4_batch_normalization_56_beta:C
5assignvariableop_5_batch_normalization_56_moving_mean:G
9assignvariableop_6_batch_normalization_56_moving_variance:M
7assignvariableop_7_separable_conv1d_50_depthwise_kernel:@M
7assignvariableop_8_separable_conv1d_50_pointwise_kernel:=
/assignvariableop_9_batch_normalization_57_gamma:=
/assignvariableop_10_batch_normalization_57_beta:D
6assignvariableop_11_batch_normalization_57_moving_mean:H
:assignvariableop_12_batch_normalization_57_moving_variance:3
 assignvariableop_13_dense_kernel:	,
assignvariableop_14_dense_bias:'
assignvariableop_15_adam_iter:	 )
assignvariableop_16_adam_beta_1: )
assignvariableop_17_adam_beta_2: (
assignvariableop_18_adam_decay: 0
&assignvariableop_19_adam_learning_rate: #
assignvariableop_20_total: #
assignvariableop_21_count: %
assignvariableop_22_total_1: %
assignvariableop_23_count_1: V
?assignvariableop_24_adam_depthwise_conv1d_30_depthwise_kernel_m:V
?assignvariableop_25_adam_separable_conv1d_49_depthwise_kernel_m:U
?assignvariableop_26_adam_separable_conv1d_49_pointwise_kernel_m:E
7assignvariableop_27_adam_batch_normalization_56_gamma_m:D
6assignvariableop_28_adam_batch_normalization_56_beta_m:U
?assignvariableop_29_adam_separable_conv1d_50_depthwise_kernel_m:@U
?assignvariableop_30_adam_separable_conv1d_50_pointwise_kernel_m:E
7assignvariableop_31_adam_batch_normalization_57_gamma_m:D
6assignvariableop_32_adam_batch_normalization_57_beta_m::
'assignvariableop_33_adam_dense_kernel_m:	3
%assignvariableop_34_adam_dense_bias_m:V
?assignvariableop_35_adam_depthwise_conv1d_30_depthwise_kernel_v:V
?assignvariableop_36_adam_separable_conv1d_49_depthwise_kernel_v:U
?assignvariableop_37_adam_separable_conv1d_49_pointwise_kernel_v:E
7assignvariableop_38_adam_batch_normalization_56_gamma_v:D
6assignvariableop_39_adam_batch_normalization_56_beta_v:U
?assignvariableop_40_adam_separable_conv1d_50_depthwise_kernel_v:@U
?assignvariableop_41_adam_separable_conv1d_50_pointwise_kernel_v:E
7assignvariableop_42_adam_batch_normalization_57_gamma_v:D
6assignvariableop_43_adam_batch_normalization_57_beta_v::
'assignvariableop_44_adam_dense_kernel_v:	3
%assignvariableop_45_adam_dense_bias_v:
identity_47¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ä
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*
valueBý/B@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÎ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ò
_output_shapes¿
¼:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOpAssignVariableOp5assignvariableop_depthwise_conv1d_30_depthwise_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_1AssignVariableOp7assignvariableop_1_separable_conv1d_49_depthwise_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_2AssignVariableOp7assignvariableop_2_separable_conv1d_49_pointwise_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_56_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp.assignvariableop_4_batch_normalization_56_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_5AssignVariableOp5assignvariableop_5_batch_normalization_56_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_6AssignVariableOp9assignvariableop_6_batch_normalization_56_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_7AssignVariableOp7assignvariableop_7_separable_conv1d_50_depthwise_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_8AssignVariableOp7assignvariableop_8_separable_conv1d_50_pointwise_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_57_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_10AssignVariableOp/assignvariableop_10_batch_normalization_57_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_11AssignVariableOp6assignvariableop_11_batch_normalization_57_moving_meanIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_12AssignVariableOp:assignvariableop_12_batch_normalization_57_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_dense_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_iterIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_decayIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_learning_rateIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_24AssignVariableOp?assignvariableop_24_adam_depthwise_conv1d_30_depthwise_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_25AssignVariableOp?assignvariableop_25_adam_separable_conv1d_49_depthwise_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_26AssignVariableOp?assignvariableop_26_adam_separable_conv1d_49_pointwise_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_27AssignVariableOp7assignvariableop_27_adam_batch_normalization_56_gamma_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_batch_normalization_56_beta_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_29AssignVariableOp?assignvariableop_29_adam_separable_conv1d_50_depthwise_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_30AssignVariableOp?assignvariableop_30_adam_separable_conv1d_50_pointwise_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_31AssignVariableOp7assignvariableop_31_adam_batch_normalization_57_gamma_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_batch_normalization_57_beta_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp%assignvariableop_34_adam_dense_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_35AssignVariableOp?assignvariableop_35_adam_depthwise_conv1d_30_depthwise_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_36AssignVariableOp?assignvariableop_36_adam_separable_conv1d_49_depthwise_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_37AssignVariableOp?assignvariableop_37_adam_separable_conv1d_49_pointwise_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_38AssignVariableOp7assignvariableop_38_adam_batch_normalization_56_gamma_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_batch_normalization_56_beta_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_40AssignVariableOp?assignvariableop_40_adam_separable_conv1d_50_depthwise_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_41AssignVariableOp?assignvariableop_41_adam_separable_conv1d_50_pointwise_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_42AssignVariableOp7assignvariableop_42_adam_batch_normalization_57_gamma_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_batch_normalization_57_beta_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp%assignvariableop_45_adam_dense_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ã
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_47IdentityIdentity_46:output:0^NoOp_1*
T0*
_output_shapes
: °
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_47Identity_47:output:0*q
_input_shapes`
^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

¤
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17002466

inputs:
$expanddims_1_readvariableop_resource:@:
$expanddims_2_readvariableop_resource:
identity¢ExpandDims_1/ReadVariableOp¢ExpandDims_2/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :|

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ExpandDims_1/ReadVariableOpReadVariableOp$expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@
ExpandDims_2/ReadVariableOpReadVariableOp$expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ExpandDims_2
ExpandDims#ExpandDims_2/ReadVariableOp:value:0ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   @         o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ê
separable_conv2d/depthwiseDepthwiseConv2dNativeExpandDims:output:0ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
Â
separable_conv2dConv2D#separable_conv2d/depthwise:output:0ExpandDims_2:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

SqueezeSqueezeseparable_conv2d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
l
IdentityIdentitySqueeze:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^ExpandDims_1/ReadVariableOp^ExpandDims_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2:
ExpandDims_2/ReadVariableOpExpandDims_2/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬

F__inference_model_68_layer_call_and_return_conditional_losses_17002025

inputsO
8depthwise_conv1d_30_expanddims_1_readvariableop_resource:O
8separable_conv1d_49_expanddims_1_readvariableop_resource:N
8separable_conv1d_49_expanddims_2_readvariableop_resource:F
8batch_normalization_56_batchnorm_readvariableop_resource:J
<batch_normalization_56_batchnorm_mul_readvariableop_resource:H
:batch_normalization_56_batchnorm_readvariableop_1_resource:H
:batch_normalization_56_batchnorm_readvariableop_2_resource:N
8separable_conv1d_50_expanddims_1_readvariableop_resource:@N
8separable_conv1d_50_expanddims_2_readvariableop_resource:F
8batch_normalization_57_batchnorm_readvariableop_resource:J
<batch_normalization_57_batchnorm_mul_readvariableop_resource:H
:batch_normalization_57_batchnorm_readvariableop_1_resource:H
:batch_normalization_57_batchnorm_readvariableop_2_resource:7
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:
identity¢/batch_normalization_56/batchnorm/ReadVariableOp¢1batch_normalization_56/batchnorm/ReadVariableOp_1¢1batch_normalization_56/batchnorm/ReadVariableOp_2¢3batch_normalization_56/batchnorm/mul/ReadVariableOp¢/batch_normalization_57/batchnorm/ReadVariableOp¢1batch_normalization_57/batchnorm/ReadVariableOp_1¢1batch_normalization_57/batchnorm/ReadVariableOp_2¢3batch_normalization_57/batchnorm/mul/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢/depthwise_conv1d_30/ExpandDims_1/ReadVariableOp¢/separable_conv1d_49/ExpandDims_1/ReadVariableOp¢/separable_conv1d_49/ExpandDims_2/ReadVariableOp¢/separable_conv1d_50/ExpandDims_1/ReadVariableOp¢/separable_conv1d_50/ExpandDims_2/ReadVariableOpd
"depthwise_conv1d_30/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
depthwise_conv1d_30/ExpandDims
ExpandDimsinputs+depthwise_conv1d_30/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
/depthwise_conv1d_30/ExpandDims_1/ReadVariableOpReadVariableOp8depthwise_conv1d_30_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0f
$depthwise_conv1d_30/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : È
 depthwise_conv1d_30/ExpandDims_1
ExpandDims7depthwise_conv1d_30/ExpandDims_1/ReadVariableOp:value:0-depthwise_conv1d_30/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:|
#depthwise_conv1d_30/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            |
+depthwise_conv1d_30/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      í
depthwise_conv1d_30/depthwiseDepthwiseConv2dNative'depthwise_conv1d_30/ExpandDims:output:0)depthwise_conv1d_30/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

depthwise_conv1d_30/SqueezeSqueeze&depthwise_conv1d_30/depthwise:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
d
"separable_conv1d_49/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :º
separable_conv1d_49/ExpandDims
ExpandDims$depthwise_conv1d_30/Squeeze:output:0+separable_conv1d_49/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
/separable_conv1d_49/ExpandDims_1/ReadVariableOpReadVariableOp8separable_conv1d_49_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0f
$separable_conv1d_49/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : È
 separable_conv1d_49/ExpandDims_1
ExpandDims7separable_conv1d_49/ExpandDims_1/ReadVariableOp:value:0-separable_conv1d_49/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:¬
/separable_conv1d_49/ExpandDims_2/ReadVariableOpReadVariableOp8separable_conv1d_49_expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0f
$separable_conv1d_49/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : Ç
 separable_conv1d_49/ExpandDims_2
ExpandDims7separable_conv1d_49/ExpandDims_2/ReadVariableOp:value:0-separable_conv1d_49/ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:
*separable_conv1d_49/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
2separable_conv1d_49/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      þ
.separable_conv1d_49/separable_conv2d/depthwiseDepthwiseConv2dNative'separable_conv1d_49/ExpandDims:output:0)separable_conv1d_49/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
ö
$separable_conv1d_49/separable_conv2dConv2D7separable_conv1d_49/separable_conv2d/depthwise:output:0)separable_conv1d_49/ExpandDims_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
£
separable_conv1d_49/SqueezeSqueeze-separable_conv1d_49/separable_conv2d:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
¤
/batch_normalization_56/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_56_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_56/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¼
$batch_normalization_56/batchnorm/addAddV27batch_normalization_56/batchnorm/ReadVariableOp:value:0/batch_normalization_56/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_56/batchnorm/RsqrtRsqrt(batch_normalization_56/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_56/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_56_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¹
$batch_normalization_56/batchnorm/mulMul*batch_normalization_56/batchnorm/Rsqrt:y:0;batch_normalization_56/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:´
&batch_normalization_56/batchnorm/mul_1Mul$separable_conv1d_49/Squeeze:output:0(batch_normalization_56/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
1batch_normalization_56/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_56_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0·
&batch_normalization_56/batchnorm/mul_2Mul9batch_normalization_56/batchnorm/ReadVariableOp_1:value:0(batch_normalization_56/batchnorm/mul:z:0*
T0*
_output_shapes
:¨
1batch_normalization_56/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_56_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0·
$batch_normalization_56/batchnorm/subSub9batch_normalization_56/batchnorm/ReadVariableOp_2:value:0*batch_normalization_56/batchnorm/mul_2:z:0*
T0*
_output_shapes
:¼
&batch_normalization_56/batchnorm/add_1AddV2*batch_normalization_56/batchnorm/mul_1:z:0(batch_normalization_56/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
activation_56/EluElu*batch_normalization_56/batchnorm/add_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#average_pooling1d_55/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :·
average_pooling1d_55/ExpandDims
ExpandDimsactivation_56/Elu:activations:0,average_pooling1d_55/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
average_pooling1d_55/AvgPoolAvgPool(average_pooling1d_55/ExpandDims:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides

average_pooling1d_55/SqueezeSqueeze%average_pooling1d_55/AvgPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
d
"separable_conv1d_50/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :º
separable_conv1d_50/ExpandDims
ExpandDims%average_pooling1d_55/Squeeze:output:0+separable_conv1d_50/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
/separable_conv1d_50/ExpandDims_1/ReadVariableOpReadVariableOp8separable_conv1d_50_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0f
$separable_conv1d_50/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ç
 separable_conv1d_50/ExpandDims_1
ExpandDims7separable_conv1d_50/ExpandDims_1/ReadVariableOp:value:0-separable_conv1d_50/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@¬
/separable_conv1d_50/ExpandDims_2/ReadVariableOpReadVariableOp8separable_conv1d_50_expanddims_2_readvariableop_resource*"
_output_shapes
:*
dtype0f
$separable_conv1d_50/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : Ç
 separable_conv1d_50/ExpandDims_2
ExpandDims7separable_conv1d_50/ExpandDims_2/ReadVariableOp:value:0-separable_conv1d_50/ExpandDims_2/dim:output:0*
T0*&
_output_shapes
:
*separable_conv1d_50/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   @         
2separable_conv1d_50/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ý
.separable_conv1d_50/separable_conv2d/depthwiseDepthwiseConv2dNative'separable_conv1d_50/ExpandDims:output:0)separable_conv1d_50/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
õ
$separable_conv1d_50/separable_conv2dConv2D7separable_conv1d_50/separable_conv2d/depthwise:output:0)separable_conv1d_50/ExpandDims_2:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
¢
separable_conv1d_50/SqueezeSqueeze-separable_conv1d_50/separable_conv2d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
¤
/batch_normalization_57/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_57_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_57/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¼
$batch_normalization_57/batchnorm/addAddV27batch_normalization_57/batchnorm/ReadVariableOp:value:0/batch_normalization_57/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_57/batchnorm/RsqrtRsqrt(batch_normalization_57/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_57/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_57_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¹
$batch_normalization_57/batchnorm/mulMul*batch_normalization_57/batchnorm/Rsqrt:y:0;batch_normalization_57/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:³
&batch_normalization_57/batchnorm/mul_1Mul$separable_conv1d_50/Squeeze:output:0(batch_normalization_57/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
1batch_normalization_57/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_57_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0·
&batch_normalization_57/batchnorm/mul_2Mul9batch_normalization_57/batchnorm/ReadVariableOp_1:value:0(batch_normalization_57/batchnorm/mul:z:0*
T0*
_output_shapes
:¨
1batch_normalization_57/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_57_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0·
$batch_normalization_57/batchnorm/subSub9batch_normalization_57/batchnorm/ReadVariableOp_2:value:0*batch_normalization_57/batchnorm/mul_2:z:0*
T0*
_output_shapes
:»
&batch_normalization_57/batchnorm/add_1AddV2*batch_normalization_57/batchnorm/mul_1:z:0(batch_normalization_57/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
activation_57/EluElu*batch_normalization_57/batchnorm/add_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
#average_pooling1d_56/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :¶
average_pooling1d_56/ExpandDims
ExpandDimsactivation_57/Elu:activations:0,average_pooling1d_56/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ç
average_pooling1d_56/AvgPoolAvgPool(average_pooling1d_56/ExpandDims:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

average_pooling1d_56/SqueezeSqueeze%average_pooling1d_56/AvgPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
|
dropout_33/IdentityIdentity%average_pooling1d_56/Squeeze:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten/ReshapeReshapedropout_33/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
softmax/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitysoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp0^batch_normalization_56/batchnorm/ReadVariableOp2^batch_normalization_56/batchnorm/ReadVariableOp_12^batch_normalization_56/batchnorm/ReadVariableOp_24^batch_normalization_56/batchnorm/mul/ReadVariableOp0^batch_normalization_57/batchnorm/ReadVariableOp2^batch_normalization_57/batchnorm/ReadVariableOp_12^batch_normalization_57/batchnorm/ReadVariableOp_24^batch_normalization_57/batchnorm/mul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp0^depthwise_conv1d_30/ExpandDims_1/ReadVariableOp0^separable_conv1d_49/ExpandDims_1/ReadVariableOp0^separable_conv1d_49/ExpandDims_2/ReadVariableOp0^separable_conv1d_50/ExpandDims_1/ReadVariableOp0^separable_conv1d_50/ExpandDims_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : 2b
/batch_normalization_56/batchnorm/ReadVariableOp/batch_normalization_56/batchnorm/ReadVariableOp2f
1batch_normalization_56/batchnorm/ReadVariableOp_11batch_normalization_56/batchnorm/ReadVariableOp_12f
1batch_normalization_56/batchnorm/ReadVariableOp_21batch_normalization_56/batchnorm/ReadVariableOp_22j
3batch_normalization_56/batchnorm/mul/ReadVariableOp3batch_normalization_56/batchnorm/mul/ReadVariableOp2b
/batch_normalization_57/batchnorm/ReadVariableOp/batch_normalization_57/batchnorm/ReadVariableOp2f
1batch_normalization_57/batchnorm/ReadVariableOp_11batch_normalization_57/batchnorm/ReadVariableOp_12f
1batch_normalization_57/batchnorm/ReadVariableOp_21batch_normalization_57/batchnorm/ReadVariableOp_22j
3batch_normalization_57/batchnorm/mul/ReadVariableOp3batch_normalization_57/batchnorm/mul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2b
/depthwise_conv1d_30/ExpandDims_1/ReadVariableOp/depthwise_conv1d_30/ExpandDims_1/ReadVariableOp2b
/separable_conv1d_49/ExpandDims_1/ReadVariableOp/separable_conv1d_49/ExpandDims_1/ReadVariableOp2b
/separable_conv1d_49/ExpandDims_2/ReadVariableOp/separable_conv1d_49/ExpandDims_2/ReadVariableOp2b
/separable_conv1d_50/ExpandDims_1/ReadVariableOp/separable_conv1d_50/ExpandDims_1/ReadVariableOp2b
/separable_conv1d_50/ExpandDims_2/ReadVariableOp/separable_conv1d_50/ExpandDims_2/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
Ô
9__inference_batch_normalization_56_layer_call_fn_17002259

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17000969|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_33_layer_call_and_return_conditional_losses_17002708

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
&
í
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002339

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ¢
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð%
í
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002393

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ¢
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì

&__inference_signature_wrapper_17001859
input_32
unknown: 
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:@
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:	

unknown_13:
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinput_32unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*1
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__wrapped_model_17000868o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_32
ê
³
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17001190

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à
n
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17002421

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_33_layer_call_and_return_conditional_losses_17001399

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
Ô
9__inference_batch_normalization_57_layer_call_fn_17002537

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17001462s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ò
n
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17001283

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :s

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
AvgPoolAvgPoolExpandDims:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
q
SqueezeSqueezeAvgPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
\
IdentityIdentitySqueeze:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
å
Ô
9__inference_batch_normalization_56_layer_call_fn_17002246

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17000922|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
g
K__inference_activation_57_layer_call_and_return_conditional_losses_17002655

inputs
identityH
EluEluinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]
IdentityIdentityElu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ò
n
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17002681

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :s

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
AvgPoolAvgPoolExpandDims:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
q
SqueezeSqueezeAvgPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
\
IdentityIdentitySqueeze:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
à
n
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17001119

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

S
7__inference_average_pooling1d_56_layer_call_fn_17002660

inputs
identityÖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17001119v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_33_layer_call_and_return_conditional_losses_17001290

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ
n
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17002429

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :t

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
AvgPoolAvgPoolExpandDims:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
q
SqueezeSqueezeAvgPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
\
IdentityIdentitySqueeze:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ

(__inference_dense_layer_call_fn_17002728

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_17001310o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
6__inference_separable_conv1d_50_layer_call_fn_17002438

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17001018|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
-__inference_dropout_33_layer_call_fn_17002691

inputs
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_33_layer_call_and_return_conditional_losses_17001399s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*±
serving_default
B
input_326
serving_default_input_32:0ÿÿÿÿÿÿÿÿÿ;
softmax0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¿
¼
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
Æ__call__
+Ç&call_and_return_all_conditional_losses
È_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
½
depthwise_kernel
	variables
trainable_variables
regularization_losses
	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses"
_tf_keras_layer
Ó
depthwise_kernel
pointwise_kernel
	variables
trainable_variables
regularization_losses
	keras_api
Ë__call__
+Ì&call_and_return_all_conditional_losses"
_tf_keras_layer
ì
 axis
	!gamma
"beta
#moving_mean
$moving_variance
%	variables
&trainable_variables
'regularization_losses
(	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses"
_tf_keras_layer
§
)	variables
*trainable_variables
+regularization_losses
,	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses"
_tf_keras_layer
§
-	variables
.trainable_variables
/regularization_losses
0	keras_api
Ñ__call__
+Ò&call_and_return_all_conditional_losses"
_tf_keras_layer
Ó
1depthwise_kernel
2pointwise_kernel
3	variables
4trainable_variables
5regularization_losses
6	keras_api
Ó__call__
+Ô&call_and_return_all_conditional_losses"
_tf_keras_layer
ì
7axis
	8gamma
9beta
:moving_mean
;moving_variance
<	variables
=trainable_variables
>regularization_losses
?	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses"
_tf_keras_layer
§
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
×__call__
+Ø&call_and_return_all_conditional_losses"
_tf_keras_layer
§
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
Ù__call__
+Ú&call_and_return_all_conditional_losses"
_tf_keras_layer
§
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
Û__call__
+Ü&call_and_return_all_conditional_losses"
_tf_keras_layer
§
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
Ý__call__
+Þ&call_and_return_all_conditional_losses"
_tf_keras_layer
½

Pkernel
Qbias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
ß__call__
+à&call_and_return_all_conditional_losses"
_tf_keras_layer
§
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
á__call__
+â&call_and_return_all_conditional_losses"
_tf_keras_layer
¯
Ziter

[beta_1

\beta_2
	]decay
^learning_ratem°m±m²!m³"m´1mµ2m¶8m·9m¸Pm¹Qmºv»v¼v½!v¾"v¿1vÀ2vÁ8vÂ9vÃPvÄQvÅ"
	optimizer

0
1
2
!3
"4
#5
$6
17
28
89
910
:11
;12
P13
Q14"
trackable_list_wrapper
n
0
1
2
!3
"4
15
26
87
98
P9
Q10"
trackable_list_wrapper
 "
trackable_list_wrapper
Î
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
Æ__call__
È_default_save_signature
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses"
_generic_user_object
-
ãserving_default"
signature_map
;:92$depthwise_conv1d_30/depthwise_kernel
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
°
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses"
_generic_user_object
;:92$separable_conv1d_49/depthwise_kernel
::82$separable_conv1d_49/pointwise_kernel
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
Ë__call__
+Ì&call_and_return_all_conditional_losses
'Ì"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_56/gamma
):'2batch_normalization_56/beta
2:0 (2"batch_normalization_56/moving_mean
6:4 (2&batch_normalization_56/moving_variance
<
!0
"1
#2
$3"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
%	variables
&trainable_variables
'regularization_losses
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
)	variables
*trainable_variables
+regularization_losses
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
-	variables
.trainable_variables
/regularization_losses
Ñ__call__
+Ò&call_and_return_all_conditional_losses
'Ò"call_and_return_conditional_losses"
_generic_user_object
::8@2$separable_conv1d_50/depthwise_kernel
::82$separable_conv1d_50/pointwise_kernel
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
²
}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
Ó__call__
+Ô&call_and_return_all_conditional_losses
'Ô"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_57/gamma
):'2batch_normalization_57/beta
2:0 (2"batch_normalization_57/moving_mean
6:4 (2&batch_normalization_57/moving_variance
<
80
91
:2
;3"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
×__call__
+Ø&call_and_return_all_conditional_losses
'Ø"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
Ù__call__
+Ú&call_and_return_all_conditional_losses
'Ú"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
Û__call__
+Ü&call_and_return_all_conditional_losses
'Ü"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
Ý__call__
+Þ&call_and_return_all_conditional_losses
'Þ"call_and_return_conditional_losses"
_generic_user_object
:	2dense/kernel
:2
dense/bias
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
R	variables
Strainable_variables
Tregularization_losses
ß__call__
+à&call_and_return_all_conditional_losses
'à"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 non_trainable_variables
¡layers
¢metrics
 £layer_regularization_losses
¤layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
á__call__
+â&call_and_return_all_conditional_losses
'â"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
<
#0
$1
:2
;3"
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
0
¥0
¦1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

§total

¨count
©	variables
ª	keras_api"
_tf_keras_metric
c

«total

¬count
­
_fn_kwargs
®	variables
¯	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
§0
¨1"
trackable_list_wrapper
.
©	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
«0
¬1"
trackable_list_wrapper
.
®	variables"
_generic_user_object
@:>2+Adam/depthwise_conv1d_30/depthwise_kernel/m
@:>2+Adam/separable_conv1d_49/depthwise_kernel/m
?:=2+Adam/separable_conv1d_49/pointwise_kernel/m
/:-2#Adam/batch_normalization_56/gamma/m
.:,2"Adam/batch_normalization_56/beta/m
?:=@2+Adam/separable_conv1d_50/depthwise_kernel/m
?:=2+Adam/separable_conv1d_50/pointwise_kernel/m
/:-2#Adam/batch_normalization_57/gamma/m
.:,2"Adam/batch_normalization_57/beta/m
$:"	2Adam/dense/kernel/m
:2Adam/dense/bias/m
@:>2+Adam/depthwise_conv1d_30/depthwise_kernel/v
@:>2+Adam/separable_conv1d_49/depthwise_kernel/v
?:=2+Adam/separable_conv1d_49/pointwise_kernel/v
/:-2#Adam/batch_normalization_56/gamma/v
.:,2"Adam/batch_normalization_56/beta/v
?:=@2+Adam/separable_conv1d_50/depthwise_kernel/v
?:=2+Adam/separable_conv1d_50/pointwise_kernel/v
/:-2#Adam/batch_normalization_57/gamma/v
.:,2"Adam/batch_normalization_57/beta/v
$:"	2Adam/dense/kernel/v
:2Adam/dense/bias/v
ú2÷
+__inference_model_68_layer_call_fn_17001357
+__inference_model_68_layer_call_fn_17001894
+__inference_model_68_layer_call_fn_17001929
+__inference_model_68_layer_call_fn_17001722À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
F__inference_model_68_layer_call_and_return_conditional_losses_17002025
F__inference_model_68_layer_call_and_return_conditional_losses_17002156
F__inference_model_68_layer_call_and_return_conditional_losses_17001769
F__inference_model_68_layer_call_and_return_conditional_losses_17001816À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÏBÌ
#__inference__wrapped_model_17000868input_32"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
à2Ý
6__inference_depthwise_conv1d_30_layer_call_fn_17002163¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
û2ø
Q__inference_depthwise_conv1d_30_layer_call_and_return_conditional_losses_17002177¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
6__inference_separable_conv1d_49_layer_call_fn_17002186
6__inference_separable_conv1d_49_layer_call_fn_17002195¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Î2Ë
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17002214
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17002233¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¦2£
9__inference_batch_normalization_56_layer_call_fn_17002246
9__inference_batch_normalization_56_layer_call_fn_17002259
9__inference_batch_normalization_56_layer_call_fn_17002272
9__inference_batch_normalization_56_layer_call_fn_17002285´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002305
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002339
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002359
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002393´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ú2×
0__inference_activation_56_layer_call_fn_17002398¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_activation_56_layer_call_and_return_conditional_losses_17002403¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
7__inference_average_pooling1d_55_layer_call_fn_17002408
7__inference_average_pooling1d_55_layer_call_fn_17002413¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17002421
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17002429¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
6__inference_separable_conv1d_50_layer_call_fn_17002438
6__inference_separable_conv1d_50_layer_call_fn_17002447¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Î2Ë
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17002466
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17002485¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¦2£
9__inference_batch_normalization_57_layer_call_fn_17002498
9__inference_batch_normalization_57_layer_call_fn_17002511
9__inference_batch_normalization_57_layer_call_fn_17002524
9__inference_batch_normalization_57_layer_call_fn_17002537´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17002557
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17002591
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17002611
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17002645´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ú2×
0__inference_activation_57_layer_call_fn_17002650¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_activation_57_layer_call_and_return_conditional_losses_17002655¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
7__inference_average_pooling1d_56_layer_call_fn_17002660
7__inference_average_pooling1d_56_layer_call_fn_17002665¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17002673
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17002681¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
-__inference_dropout_33_layer_call_fn_17002686
-__inference_dropout_33_layer_call_fn_17002691´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_dropout_33_layer_call_and_return_conditional_losses_17002696
H__inference_dropout_33_layer_call_and_return_conditional_losses_17002708´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
*__inference_flatten_layer_call_fn_17002713¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_flatten_layer_call_and_return_conditional_losses_17002719¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_dense_layer_call_fn_17002728¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_layer_call_and_return_conditional_losses_17002738¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
*__inference_softmax_layer_call_fn_17002743¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_softmax_layer_call_and_return_conditional_losses_17002748¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÎBË
&__inference_signature_wrapper_17001859input_32"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 £
#__inference__wrapped_model_17000868|$!#"12;8:9PQ6¢3
,¢)
'$
input_32ÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
softmax!
softmaxÿÿÿÿÿÿÿÿÿ±
K__inference_activation_56_layer_call_and_return_conditional_losses_17002403b4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
0__inference_activation_56_layer_call_fn_17002398U4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¯
K__inference_activation_57_layer_call_and_return_conditional_losses_17002655`3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 
0__inference_activation_57_layer_call_fn_17002650S3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@Û
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17002421E¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ·
R__inference_average_pooling1d_55_layer_call_and_return_conditional_losses_17002429a4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 ²
7__inference_average_pooling1d_55_layer_call_fn_17002408wE¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
7__inference_average_pooling1d_55_layer_call_fn_17002413T4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@Û
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17002673E¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¶
R__inference_average_pooling1d_56_layer_call_and_return_conditional_losses_17002681`3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ²
7__inference_average_pooling1d_56_layer_call_fn_17002660wE¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
7__inference_average_pooling1d_56_layer_call_fn_17002665S3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿÔ
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002305|$!#"@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ô
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002339|#$!"@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ä
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002359l$!#"8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 Ä
T__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002393l#$!"8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ¬
9__inference_batch_normalization_56_layer_call_fn_17002246o$!#"@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
9__inference_batch_normalization_56_layer_call_fn_17002259o#$!"@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
9__inference_batch_normalization_56_layer_call_fn_17002272_$!#"8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
9__inference_batch_normalization_56_layer_call_fn_17002285_#$!"8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿÔ
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17002557|;8:9@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ô
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17002591|:;89@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17002611j;8:97¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 Â
T__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17002645j:;897¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ@
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 ¬
9__inference_batch_normalization_57_layer_call_fn_17002498o;8:9@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
9__inference_batch_normalization_57_layer_call_fn_17002511o:;89@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
9__inference_batch_normalization_57_layer_call_fn_17002524];8:97¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@
9__inference_batch_normalization_57_layer_call_fn_17002537]:;897¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¤
C__inference_dense_layer_call_and_return_conditional_losses_17002738]PQ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
(__inference_dense_layer_call_fn_17002728PPQ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿº
Q__inference_depthwise_conv1d_30_layer_call_and_return_conditional_losses_17002177e4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
6__inference_depthwise_conv1d_30_layer_call_fn_17002163X4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ°
H__inference_dropout_33_layer_call_and_return_conditional_losses_17002696d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 °
H__inference_dropout_33_layer_call_and_return_conditional_losses_17002708d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_33_layer_call_fn_17002686W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_33_layer_call_fn_17002691W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¦
E__inference_flatten_layer_call_and_return_conditional_losses_17002719]3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ~
*__inference_flatten_layer_call_fn_17002713P3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÂ
F__inference_model_68_layer_call_and_return_conditional_losses_17001769x$!#"12;8:9PQ>¢;
4¢1
'$
input_32ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
F__inference_model_68_layer_call_and_return_conditional_losses_17001816x#$!"12:;89PQ>¢;
4¢1
'$
input_32ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 À
F__inference_model_68_layer_call_and_return_conditional_losses_17002025v$!#"12;8:9PQ<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 À
F__inference_model_68_layer_call_and_return_conditional_losses_17002156v#$!"12:;89PQ<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_model_68_layer_call_fn_17001357k$!#"12;8:9PQ>¢;
4¢1
'$
input_32ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_68_layer_call_fn_17001722k#$!"12:;89PQ>¢;
4¢1
'$
input_32ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_68_layer_call_fn_17001894i$!#"12;8:9PQ<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_68_layer_call_fn_17001929i#$!"12:;89PQ<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿË
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17002214v<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 »
Q__inference_separable_conv1d_49_layer_call_and_return_conditional_losses_17002233f4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 £
6__inference_separable_conv1d_49_layer_call_fn_17002186i<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
6__inference_separable_conv1d_49_layer_call_fn_17002195Y4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿË
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17002466v12<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¹
Q__inference_separable_conv1d_50_layer_call_and_return_conditional_losses_17002485d123¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 £
6__inference_separable_conv1d_50_layer_call_fn_17002438i12<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
6__inference_separable_conv1d_50_layer_call_fn_17002447W123¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@³
&__inference_signature_wrapper_17001859$!#"12;8:9PQB¢?
¢ 
8ª5
3
input_32'$
input_32ÿÿÿÿÿÿÿÿÿ"1ª.
,
softmax!
softmaxÿÿÿÿÿÿÿÿÿ¡
E__inference_softmax_layer_call_and_return_conditional_losses_17002748X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 y
*__inference_softmax_layer_call_fn_17002743K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ