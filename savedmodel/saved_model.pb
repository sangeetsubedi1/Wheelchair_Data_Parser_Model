ËŘ
Á&Ł&
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
š
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
5
DivNoNan
x"T
y"T
z"T"
Ttype:
2
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12
b'unknown'
n
dense_inputPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shape:˙˙˙˙˙˙˙˙˙


-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"
      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *ŘĘž*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *ŘĘ>*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
ć
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	
*

seed *
T0*
_class
loc:@dense/kernel
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
á
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	

Ó
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	

§
dense/kernelVarHandleOp*
shared_namedense/kernel*
_class
loc:@dense/kernel*
	container *
shape:	
*
dtype0*
_output_shapes
: 
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 

dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0

 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:	


dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:


dense/biasVarHandleOp*
shared_name
dense/bias*
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0

dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:
i
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes
:	


dense/MatMulMatMuldense_inputdense/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes	
:

dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
T

dense/ReluReludense/BiasAdd*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
[
dropout/IdentityIdentity
dense/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *   ž*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
í
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ę
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ü
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ž
dense_1/kernelVarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 

dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0

"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
*!
_class
loc:@dense_1/kernel*
dtype0

dense_1/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes	
:
Ł
dense_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container *
shape:
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 

dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0

 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes	
:
n
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0* 
_output_shapes
:

˘
dense_1/MatMulMatMuldropout/Identitydense_1/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
h
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes	
:

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
dropout_1/IdentityIdentitydense_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   *!
_class
loc:@dense_2/kernel

-dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ÍUž*!
_class
loc:@dense_2/kernel

-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *ÍU>*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
ě
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	
*

seed *
T0*!
_class
loc:@dense_2/kernel*
seed2 
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
é
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	
*
T0*!
_class
loc:@dense_2/kernel
Ű
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	

­
dense_2/kernelVarHandleOp*!
_class
loc:@dense_2/kernel*
	container *
shape:	
*
dtype0*
_output_shapes
: *
shared_namedense_2/kernel
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 

dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*!
_class
loc:@dense_2/kernel*
dtype0

"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:	


dense_2/bias/Initializer/zerosConst*
_output_shapes
:
*
valueB
*    *
_class
loc:@dense_2/bias*
dtype0
˘
dense_2/biasVarHandleOp*
_class
loc:@dense_2/bias*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namedense_2/bias
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 

dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0

 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:

m
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes
:	

Ł
dense_2/MatMulMatMuldropout_1/Identitydense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( *
transpose_b( 
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:


dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


$RMSprop/lr/Initializer/initial_valueConst*
valueB
 *o:*
_class
loc:@RMSprop/lr*
dtype0*
_output_shapes
: 


RMSprop/lrVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
RMSprop/lr*
_class
loc:@RMSprop/lr*
	container *
shape: 
e
+RMSprop/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOp
RMSprop/lr*
_output_shapes
: 

RMSprop/lr/AssignAssignVariableOp
RMSprop/lr$RMSprop/lr/Initializer/initial_value*
_class
loc:@RMSprop/lr*
dtype0

RMSprop/lr/Read/ReadVariableOpReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: *
_class
loc:@RMSprop/lr

%RMSprop/rho/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *fff?*
_class
loc:@RMSprop/rho*
dtype0

RMSprop/rhoVarHandleOp*
_class
loc:@RMSprop/rho*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameRMSprop/rho
g
,RMSprop/rho/IsInitialized/VarIsInitializedOpVarIsInitializedOpRMSprop/rho*
_output_shapes
: 

RMSprop/rho/AssignAssignVariableOpRMSprop/rho%RMSprop/rho/Initializer/initial_value*
_class
loc:@RMSprop/rho*
dtype0

RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: *
_class
loc:@RMSprop/rho

'RMSprop/decay/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    * 
_class
loc:@RMSprop/decay
Ą
RMSprop/decayVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameRMSprop/decay* 
_class
loc:@RMSprop/decay
k
.RMSprop/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpRMSprop/decay*
_output_shapes
: 

RMSprop/decay/AssignAssignVariableOpRMSprop/decay'RMSprop/decay/Initializer/initial_value* 
_class
loc:@RMSprop/decay*
dtype0

!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay* 
_class
loc:@RMSprop/decay*
dtype0*
_output_shapes
: 

,RMSprop/iterations/Initializer/initial_valueConst*
value	B	 R *%
_class
loc:@RMSprop/iterations*
dtype0	*
_output_shapes
: 
°
RMSprop/iterationsVarHandleOp*
_output_shapes
: *#
shared_nameRMSprop/iterations*%
_class
loc:@RMSprop/iterations*
	container *
shape: *
dtype0	
u
3RMSprop/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpRMSprop/iterations*
_output_shapes
: 
Ł
RMSprop/iterations/AssignAssignVariableOpRMSprop/iterations,RMSprop/iterations/Initializer/initial_value*
dtype0	*%
_class
loc:@RMSprop/iterations

&RMSprop/iterations/Read/ReadVariableOpReadVariableOpRMSprop/iterations*%
_class
loc:@RMSprop/iterations*
dtype0	*
_output_shapes
: 

dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
R
ConstConst*
_output_shapes
:*
valueB*  ?*
dtype0

dense_2_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 

totalVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nametotal*
_class

loc:@total
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 

countVarHandleOp*
shared_namecount*
_class

loc:@count*
	container *
shape: *
dtype0*
_output_shapes
: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
_class

loc:@count*
dtype0
\
loss/dense_2_loss/ConstConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
\
loss/dense_2_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
T0*
_output_shapes
: 

'loss/dense_2_loss/clip_by_value/MinimumMinimumdense_2/Softmaxloss/dense_2_loss/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0

loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

o
loss/dense_2_loss/LogLogloss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

r
loss/dense_2_loss/Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

loss/dense_2_loss/ReshapeReshapedense_2_targetloss/dense_2_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/dense_2_loss/CastCastloss/dense_2_loss/Reshape*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0	*

SrcT0
r
!loss/dense_2_loss/Reshape_1/shapeConst*
valueB"˙˙˙˙
   *
dtype0*
_output_shapes
:
 
loss/dense_2_loss/Reshape_1Reshapeloss/dense_2_loss/Log!loss/dense_2_loss/Reshape_1/shape*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0

;loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/dense_2_loss/Cast*
T0	*
out_type0*
_output_shapes
:

Yloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/dense_2_loss/Reshape_1loss/dense_2_loss/Cast*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
*
Tlabels0	*
T0

Floss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shapeShapedense_2_sample_weights*
T0*
out_type0*
_output_shapes
:

Eloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Ţ
Eloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shapeShapeYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:

Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
ů
Bloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarEqualDloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar/xEloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: *
T0

Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
Ď
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityPloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Í
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityNloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
_output_shapes
: *
T0

Ŕ
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

é
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0
*U
_classK
IGloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar

nloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualuloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchwloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

uloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchDloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rankOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*W
_classM
KIloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rank

wloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchEloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rankOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : *
T0
ő
hloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchnloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranknloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityjloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityhloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0


iloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitynloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
ş
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ď
}loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
Ź
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchEloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shapeOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape

loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchiloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Á
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
:*
valueB"      *
dtype0
˛
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
É
|loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0*

index_type0
­
~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ŕ
yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2}loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims|loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
ź
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ő
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:*

Tdim0
°
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchFloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shapeOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*Y
_classO
MKloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::*
T0

loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchiloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*Y
_classO
MKloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape

loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
validate_indices(*
T0*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:*
set_operationa-b
Í
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
Ł
tloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 

rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualtloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
ö
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchnloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankiloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_classw
usloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
ü
gloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergejloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
ż
Mloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergegloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeRloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
N*
_output_shapes
: : *
T0

Ś
>loss/dense_2_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_2Const*)
value B Bdense_2_sample_weights:0*
dtype0*
_output_shapes
: 

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_3Const*
_output_shapes
: *
valueB Bvalues.shape=*
dtype0
Ü
@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_4Const*
dtype0*
_output_shapes
: *l
valuecBa B[loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Kloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

É
Mloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ç
Mloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityKloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
Č
Lloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Ą
Iloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t

Wloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tJ^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*`
_classV
TRloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.
ń
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
ű
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B Bdense_2_sample_weights:0*
dtype0*
_output_shapes
: 
đ
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
ž
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*l
valuecBa B[loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
í
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Č
Kloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertRloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchRloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
ţ
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*`
_classV
TRloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
ú
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchFloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shapeLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Y
_classO
MKloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ř
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchEloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shapeLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
ę
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*U
_classK
IGloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar

Yloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fL^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*`
_classV
TRloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
ł
Jloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeYloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Wloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 

3loss/dense_2_loss/broadcast_weights/ones_like/ShapeShapeYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsK^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
Ĺ
3loss/dense_2_loss/broadcast_weights/ones_like/ConstConstK^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ß
-loss/dense_2_loss/broadcast_weights/ones_likeFill3loss/dense_2_loss/broadcast_weights/ones_like/Shape3loss/dense_2_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

#loss/dense_2_loss/broadcast_weightsMuldense_2_sample_weights-loss/dense_2_loss/broadcast_weights/ones_like*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ę
loss/dense_2_loss/MulMulYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#loss/dense_2_loss/broadcast_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
loss/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/SumSumloss/dense_2_loss/Mulloss/dense_2_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
c
loss/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/Sum_1Sum#loss/dense_2_loss/broadcast_weightsloss/dense_2_loss/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
y
loss/dense_2_loss/div_no_nanDivNoNanloss/dense_2_loss/Sumloss/dense_2_loss/Sum_1*
T0*
_output_shapes
: 
\
loss/dense_2_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 

loss/dense_2_loss/MeanMeanloss/dense_2_loss/div_no_nanloss/dense_2_loss/Const_3*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
T
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean*
T0*
_output_shapes
: 

metrics/acc/CastCastdense_2_target*

SrcT0*
Truncate( *0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

DstT0
~
metrics/acc/SqueezeSqueezemetrics/acc/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims

˙˙˙˙˙˙˙˙˙*
T0
g
metrics/acc/ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMaxArgMaxdense_2/Softmaxmetrics/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
metrics/acc/Cast_1Castmetrics/acc/ArgMax*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0	*
Truncate( 
q
metrics/acc/EqualEqualmetrics/acc/Squeezemetrics/acc/Cast_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
z
metrics/acc/Cast_2Castmetrics/acc/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
]
metrics/acc/SizeSizemetrics/acc/Cast_2*
T0*
out_type0*
_output_shapes
: 
l
metrics/acc/Cast_3Castmetrics/acc/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
[
metrics/acc/ConstConst*
_output_shapes
:*
valueB: *
dtype0
{
metrics/acc/SumSummetrics/acc/Cast_2metrics/acc/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0
z
metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp*
_output_shapes
: *
dtype0
}
!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_3^metrics/acc/ReadVariableOp*
dtype0

metrics/acc/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1^metrics/acc/ReadVariableOp*
dtype0*
_output_shapes
: 

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal^metrics/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount^metrics/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
~
metrics/acc/Squeeze_1Squeezedense_2_target*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims

˙˙˙˙˙˙˙˙˙
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxdense_2/Softmaxmetrics/acc/ArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
}
metrics/acc/Cast_4Castmetrics/acc/ArgMax_1*

SrcT0	*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
u
metrics/acc/Equal_1Equalmetrics/acc/Squeeze_1metrics/acc/Cast_4*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
metrics/acc/Cast_5Castmetrics/acc/Equal_1*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0

]
metrics/acc/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

metrics/acc/MeanMeanmetrics/acc/Cast_5metrics/acc/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

 training/RMSprop/gradients/ShapeConst*
_output_shapes
: *
valueB *
_class
loc:@loss/mul*
dtype0

$training/RMSprop/gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ?*
_class
loc:@loss/mul*
dtype0
ż
training/RMSprop/gradients/FillFill training/RMSprop/gradients/Shape$training/RMSprop/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
Ş
,training/RMSprop/gradients/loss/mul_grad/MulMultraining/RMSprop/gradients/Fillloss/dense_2_loss/Mean*
_output_shapes
: *
T0*
_class
loc:@loss/mul
 
.training/RMSprop/gradients/loss/mul_grad/Mul_1Multraining/RMSprop/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
˛
Dtraining/RMSprop/gradients/loss/dense_2_loss/Mean_grad/Reshape/shapeConst*
_output_shapes
: *
valueB *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0

>training/RMSprop/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape.training/RMSprop/gradients/loss/mul_grad/Mul_1Dtraining/RMSprop/gradients/loss/dense_2_loss/Mean_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0*)
_class
loc:@loss/dense_2_loss/Mean
Ş
<training/RMSprop/gradients/loss/dense_2_loss/Mean_grad/ConstConst*
valueB *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
: 

;training/RMSprop/gradients/loss/dense_2_loss/Mean_grad/TileTile>training/RMSprop/gradients/loss/dense_2_loss/Mean_grad/Reshape<training/RMSprop/gradients/loss/dense_2_loss/Mean_grad/Const*
_output_shapes
: *

Tmultiples0*
T0*)
_class
loc:@loss/dense_2_loss/Mean
Ž
>training/RMSprop/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  ?*)
_class
loc:@loss/dense_2_loss/Mean

>training/RMSprop/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv;training/RMSprop/gradients/loss/dense_2_loss/Mean_grad/Tile>training/RMSprop/gradients/loss/dense_2_loss/Mean_grad/Const_1*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_2_loss/Mean
ś
Btraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/ShapeConst*
_output_shapes
: *
valueB */
_class%
#!loc:@loss/dense_2_loss/div_no_nan*
dtype0
¸
Dtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/Shape_1Const*
valueB */
_class%
#!loc:@loss/dense_2_loss/div_no_nan*
dtype0*
_output_shapes
: 
ă
Rtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/ShapeDtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/Shape_1*
T0*/
_class%
#!loc:@loss/dense_2_loss/div_no_nan*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ţ
Gtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/div_no_nanDivNoNan>training/RMSprop/gradients/loss/dense_2_loss/Mean_grad/truedivloss/dense_2_loss/Sum_1*
T0*/
_class%
#!loc:@loss/dense_2_loss/div_no_nan*
_output_shapes
: 
Ó
@training/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/SumSumGtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/div_no_nanRtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@loss/dense_2_loss/div_no_nan*
_output_shapes
: *

Tidx0*
	keep_dims( 
ľ
Dtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/ReshapeReshape@training/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/SumBtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@loss/dense_2_loss/div_no_nan*
_output_shapes
: 
°
@training/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/NegNegloss/dense_2_loss/Sum*/
_class%
#!loc:@loss/dense_2_loss/div_no_nan*
_output_shapes
: *
T0

Itraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/div_no_nan_1DivNoNan@training/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/Negloss/dense_2_loss/Sum_1*
T0*/
_class%
#!loc:@loss/dense_2_loss/div_no_nan*
_output_shapes
: 

Itraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/div_no_nan_2DivNoNanItraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/div_no_nan_1loss/dense_2_loss/Sum_1*
T0*/
_class%
#!loc:@loss/dense_2_loss/div_no_nan*
_output_shapes
: 
¤
@training/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/mulMul>training/RMSprop/gradients/loss/dense_2_loss/Mean_grad/truedivItraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/div_no_nan_2*
T0*/
_class%
#!loc:@loss/dense_2_loss/div_no_nan*
_output_shapes
: 
Đ
Btraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/Sum_1Sum@training/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/mulTtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@loss/dense_2_loss/div_no_nan
ť
Ftraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/Reshape_1ReshapeBtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/Sum_1Dtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*/
_class%
#!loc:@loss/dense_2_loss/div_no_nan
ˇ
Ctraining/RMSprop/gradients/loss/dense_2_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*(
_class
loc:@loss/dense_2_loss/Sum
°
=training/RMSprop/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshapeDtraining/RMSprop/gradients/loss/dense_2_loss/div_no_nan_grad/ReshapeCtraining/RMSprop/gradients/loss/dense_2_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/Sum
ş
;training/RMSprop/gradients/loss/dense_2_loss/Sum_grad/ShapeShapeloss/dense_2_loss/Mul*
_output_shapes
:*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/Sum
¨
:training/RMSprop/gradients/loss/dense_2_loss/Sum_grad/TileTile=training/RMSprop/gradients/loss/dense_2_loss/Sum_grad/Reshape;training/RMSprop/gradients/loss/dense_2_loss/Sum_grad/Shape*

Tmultiples0*
T0*(
_class
loc:@loss/dense_2_loss/Sum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ţ
;training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/ShapeShapeYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/Mul*
_output_shapes
:
Ę
=training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/Shape_1Shape#loss/dense_2_loss/broadcast_weights*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/Mul*
_output_shapes
:
Ç
Ktraining/RMSprop/gradients/loss/dense_2_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs;training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/Shape=training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_2_loss/Mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ů
9training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/MulMul:training/RMSprop/gradients/loss/dense_2_loss/Sum_grad/Tile#loss/dense_2_loss/broadcast_weights*
T0*(
_class
loc:@loss/dense_2_loss/Mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
9training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/SumSum9training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/MulKtraining/RMSprop/gradients/loss/dense_2_loss/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss/dense_2_loss/Mul*
_output_shapes
:
Ś
=training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/ReshapeReshape9training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/Sum;training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/Shape*
Tshape0*(
_class
loc:@loss/dense_2_loss/Mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ą
;training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/Mul_1MulYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:training/RMSprop/gradients/loss/dense_2_loss/Sum_grad/Tile*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*(
_class
loc:@loss/dense_2_loss/Mul
¸
;training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/Sum_1Sum;training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/Mul_1Mtraining/RMSprop/gradients/loss/dense_2_loss/Mul_grad/BroadcastGradientArgs:1*(
_class
loc:@loss/dense_2_loss/Mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ź
?training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/Reshape_1Reshape;training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/Sum_1=training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/Mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
%training/RMSprop/gradients/zeros_like	ZerosLike[loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*l
_classb
`^loc:@loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ń
training/RMSprop/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient[loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*l
_classb
`^loc:@loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
Â
training/RMSprop/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*l
_classb
`^loc:@loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0*
_output_shapes
: 

training/RMSprop/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims=training/RMSprop/gradients/loss/dense_2_loss/Mul_grad/Reshapetraining/RMSprop/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*l
_classb
`^loc:@loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
}training/RMSprop/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMultraining/RMSprop/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimstraining/RMSprop/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*l
_classb
`^loc:@loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Ć
Atraining/RMSprop/gradients/loss/dense_2_loss/Reshape_1_grad/ShapeShapeloss/dense_2_loss/Log*
T0*
out_type0*.
_class$
" loc:@loss/dense_2_loss/Reshape_1*
_output_shapes
:

Ctraining/RMSprop/gradients/loss/dense_2_loss/Reshape_1_grad/ReshapeReshape}training/RMSprop/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulAtraining/RMSprop/gradients/loss/dense_2_loss/Reshape_1_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*
Tshape0*.
_class$
" loc:@loss/dense_2_loss/Reshape_1

@training/RMSprop/gradients/loss/dense_2_loss/Log_grad/Reciprocal
Reciprocalloss/dense_2_loss/clip_by_valueD^training/RMSprop/gradients/loss/dense_2_loss/Reshape_1_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*(
_class
loc:@loss/dense_2_loss/Log
Ł
9training/RMSprop/gradients/loss/dense_2_loss/Log_grad/mulMulCtraining/RMSprop/gradients/loss/dense_2_loss/Reshape_1_grad/Reshape@training/RMSprop/gradients/loss/dense_2_loss/Log_grad/Reciprocal*
T0*(
_class
loc:@loss/dense_2_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ŕ
Etraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShape'loss/dense_2_loss/clip_by_value/Minimum*
T0*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
ž
Gtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*
valueB *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
dtype0*
_output_shapes
: 
ô
Gtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shape9training/RMSprop/gradients/loss/dense_2_loss/Log_grad/mul*
T0*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
Ä
Ktraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
dtype0*
_output_shapes
: 
Ű
Etraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillGtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Ktraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


Ltraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ď
Utraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeGtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

Ftraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectLtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqual9training/RMSprop/gradients/loss/dense_2_loss/Log_grad/mulEtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0

Htraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1SelectLtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualEtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/zeros9training/RMSprop/gradients/loss/dense_2_loss/Log_grad/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
Ý
Ctraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumFtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/SelectUtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ň
Gtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshapeCtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/SumEtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ă
Etraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumHtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Wtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
Ç
Itraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeEtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Gtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
: 
Ř
Mtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapedense_2/Softmax*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:*
T0
Î
Otraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum

Otraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeGtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
Ô
Straining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
dtype0
ű
Mtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosFillOtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2Straining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*

index_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
ô
Qtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_2/Softmaxloss/dense_2_loss/sub*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


]training/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsMtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeOtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ą
Ntraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectSelectQtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualGtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeMtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
ł
Ptraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1SelectQtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualMtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosGtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ý
Ktraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumSumNtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select]training/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
ň
Otraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeKtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumMtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum

Mtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumPtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1_training/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ç
Qtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeMtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Otraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
: 
ň
3training/RMSprop/gradients/dense_2/Softmax_grad/mulMulOtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshapedense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

´
Etraining/RMSprop/gradients/dense_2/Softmax_grad/Sum/reduction_indicesConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*"
_class
loc:@dense_2/Softmax*
dtype0
Š
3training/RMSprop/gradients/dense_2/Softmax_grad/SumSum3training/RMSprop/gradients/dense_2/Softmax_grad/mulEtraining/RMSprop/gradients/dense_2/Softmax_grad/Sum/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims(*
T0*"
_class
loc:@dense_2/Softmax

3training/RMSprop/gradients/dense_2/Softmax_grad/subSubOtraining/RMSprop/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape3training/RMSprop/gradients/dense_2/Softmax_grad/Sum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*"
_class
loc:@dense_2/Softmax
Ř
5training/RMSprop/gradients/dense_2/Softmax_grad/mul_1Mul3training/RMSprop/gradients/dense_2/Softmax_grad/subdense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

á
;training/RMSprop/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad5training/RMSprop/gradients/dense_2/Softmax_grad/mul_1*
T0*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC*
_output_shapes
:


5training/RMSprop/gradients/dense_2/MatMul_grad/MatMulMatMul5training/RMSprop/gradients/dense_2/Softmax_grad/mul_1dense_2/MatMul/ReadVariableOp*
T0*!
_class
loc:@dense_2/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(
˙
7training/RMSprop/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/Identity5training/RMSprop/gradients/dense_2/Softmax_grad/mul_1*
_output_shapes
:	
*
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_2/MatMul
Ú
5training/RMSprop/gradients/dense_1/Relu_grad/ReluGradReluGrad5training/RMSprop/gradients/dense_2/MatMul_grad/MatMuldense_1/Relu*
_class
loc:@dense_1/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
â
;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/RMSprop/gradients/dense_1/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC

5training/RMSprop/gradients/dense_1/MatMul_grad/MatMulMatMul5training/RMSprop/gradients/dense_1/Relu_grad/ReluGraddense_1/MatMul/ReadVariableOp*
T0*!
_class
loc:@dense_1/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(
ţ
7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1MatMuldropout/Identity5training/RMSprop/gradients/dense_1/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_1/MatMul* 
_output_shapes
:
*
transpose_a(*
transpose_b( 
Ô
3training/RMSprop/gradients/dense/Relu_grad/ReluGradReluGrad5training/RMSprop/gradients/dense_1/MatMul_grad/MatMul
dense/Relu*
T0*
_class
loc:@dense/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ü
9training/RMSprop/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad3training/RMSprop/gradients/dense/Relu_grad/ReluGrad*
_output_shapes	
:*
T0* 
_class
loc:@dense/BiasAdd*
data_formatNHWC

3training/RMSprop/gradients/dense/MatMul_grad/MatMulMatMul3training/RMSprop/gradients/dense/Relu_grad/ReluGraddense/MatMul/ReadVariableOp*
T0*
_class
loc:@dense/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( *
transpose_b(
ň
5training/RMSprop/gradients/dense/MatMul_grad/MatMul_1MatMuldense_input3training/RMSprop/gradients/dense/Relu_grad/ReluGrad*
T0*
_class
loc:@dense/MatMul*
_output_shapes
:	
*
transpose_a(*
transpose_b( 
w
&training/RMSprop/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"
      *
dtype0
a
training/RMSprop/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
 
training/RMSprop/zerosFill&training/RMSprop/zeros/shape_as_tensortraining/RMSprop/zeros/Const*
_output_shapes
:	
*
T0*

index_type0
Î
training/RMSprop/VariableVarHandleOp*
shape:	
*
dtype0*
_output_shapes
: **
shared_nametraining/RMSprop/Variable*,
_class"
 loc:@training/RMSprop/Variable*
	container 

:training/RMSprop/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable*
_output_shapes
: 
˘
 training/RMSprop/Variable/AssignAssignVariableOptraining/RMSprop/Variabletraining/RMSprop/zeros*
dtype0*,
_class"
 loc:@training/RMSprop/Variable
ś
-training/RMSprop/Variable/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable*,
_class"
 loc:@training/RMSprop/Variable*
dtype0*
_output_shapes
:	

g
training/RMSprop/zeros_1Const*
valueB*    *
dtype0*
_output_shapes	
:
Đ
training/RMSprop/Variable_1VarHandleOp*
dtype0*
_output_shapes
: *,
shared_nametraining/RMSprop/Variable_1*.
_class$
" loc:@training/RMSprop/Variable_1*
	container *
shape:

<training/RMSprop/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_1*
_output_shapes
: 
Ş
"training/RMSprop/Variable_1/AssignAssignVariableOptraining/RMSprop/Variable_1training/RMSprop/zeros_1*.
_class$
" loc:@training/RMSprop/Variable_1*
dtype0
¸
/training/RMSprop/Variable_1/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_1*.
_class$
" loc:@training/RMSprop/Variable_1*
dtype0*
_output_shapes	
:
y
(training/RMSprop/zeros_2/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
c
training/RMSprop/zeros_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
§
training/RMSprop/zeros_2Fill(training/RMSprop/zeros_2/shape_as_tensortraining/RMSprop/zeros_2/Const* 
_output_shapes
:
*
T0*

index_type0
Ő
training/RMSprop/Variable_2VarHandleOp*.
_class$
" loc:@training/RMSprop/Variable_2*
	container *
shape:
*
dtype0*
_output_shapes
: *,
shared_nametraining/RMSprop/Variable_2

<training/RMSprop/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_2*
_output_shapes
: 
Ş
"training/RMSprop/Variable_2/AssignAssignVariableOptraining/RMSprop/Variable_2training/RMSprop/zeros_2*.
_class$
" loc:@training/RMSprop/Variable_2*
dtype0
˝
/training/RMSprop/Variable_2/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_2*.
_class$
" loc:@training/RMSprop/Variable_2*
dtype0* 
_output_shapes
:

g
training/RMSprop/zeros_3Const*
_output_shapes	
:*
valueB*    *
dtype0
Đ
training/RMSprop/Variable_3VarHandleOp*,
shared_nametraining/RMSprop/Variable_3*.
_class$
" loc:@training/RMSprop/Variable_3*
	container *
shape:*
dtype0*
_output_shapes
: 

<training/RMSprop/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_3*
_output_shapes
: 
Ş
"training/RMSprop/Variable_3/AssignAssignVariableOptraining/RMSprop/Variable_3training/RMSprop/zeros_3*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_3
¸
/training/RMSprop/Variable_3/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_3*.
_class$
" loc:@training/RMSprop/Variable_3*
dtype0*
_output_shapes	
:
y
(training/RMSprop/zeros_4/shape_as_tensorConst*
valueB"   
   *
dtype0*
_output_shapes
:
c
training/RMSprop/zeros_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ś
training/RMSprop/zeros_4Fill(training/RMSprop/zeros_4/shape_as_tensortraining/RMSprop/zeros_4/Const*
T0*

index_type0*
_output_shapes
:	

Ô
training/RMSprop/Variable_4VarHandleOp*
_output_shapes
: *,
shared_nametraining/RMSprop/Variable_4*.
_class$
" loc:@training/RMSprop/Variable_4*
	container *
shape:	
*
dtype0

<training/RMSprop/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_4*
_output_shapes
: 
Ş
"training/RMSprop/Variable_4/AssignAssignVariableOptraining/RMSprop/Variable_4training/RMSprop/zeros_4*.
_class$
" loc:@training/RMSprop/Variable_4*
dtype0
ź
/training/RMSprop/Variable_4/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_4*.
_class$
" loc:@training/RMSprop/Variable_4*
dtype0*
_output_shapes
:	

e
training/RMSprop/zeros_5Const*
_output_shapes
:
*
valueB
*    *
dtype0
Ď
training/RMSprop/Variable_5VarHandleOp*
dtype0*
_output_shapes
: *,
shared_nametraining/RMSprop/Variable_5*.
_class$
" loc:@training/RMSprop/Variable_5*
	container *
shape:


<training/RMSprop/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_5*
_output_shapes
: 
Ş
"training/RMSprop/Variable_5/AssignAssignVariableOptraining/RMSprop/Variable_5training/RMSprop/zeros_5*.
_class$
" loc:@training/RMSprop/Variable_5*
dtype0
ˇ
/training/RMSprop/Variable_5/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_5*.
_class$
" loc:@training/RMSprop/Variable_5*
dtype0*
_output_shapes
:

X
training/RMSprop/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
t
$training/RMSprop/AssignAddVariableOpAssignAddVariableOpRMSprop/iterationstraining/RMSprop/Const*
dtype0	

training/RMSprop/ReadVariableOpReadVariableOpRMSprop/iterations%^training/RMSprop/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
e
!training/RMSprop/ReadVariableOp_1ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
~
#training/RMSprop/mul/ReadVariableOpReadVariableOptraining/RMSprop/Variable*
_output_shapes
:	
*
dtype0

training/RMSprop/mulMul!training/RMSprop/ReadVariableOp_1#training/RMSprop/mul/ReadVariableOp*
T0*
_output_shapes
:	

e
!training/RMSprop/ReadVariableOp_2ReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
[
training/RMSprop/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
w
training/RMSprop/subSubtraining/RMSprop/sub/x!training/RMSprop/ReadVariableOp_2*
_output_shapes
: *
T0

training/RMSprop/SquareSquare5training/RMSprop/gradients/dense/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	

v
training/RMSprop/mul_1Multraining/RMSprop/subtraining/RMSprop/Square*
T0*
_output_shapes
:	

s
training/RMSprop/addAddtraining/RMSprop/multraining/RMSprop/mul_1*
T0*
_output_shapes
:	

s
!training/RMSprop/AssignVariableOpAssignVariableOptraining/RMSprop/Variabletraining/RMSprop/add*
dtype0
 
!training/RMSprop/ReadVariableOp_3ReadVariableOptraining/RMSprop/Variable"^training/RMSprop/AssignVariableOp*
dtype0*
_output_shapes
:	

d
!training/RMSprop/ReadVariableOp_4ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
Ą
training/RMSprop/mul_2Mul!training/RMSprop/ReadVariableOp_45training/RMSprop/gradients/dense/MatMul_grad/MatMul_1*
_output_shapes
:	
*
T0
]
training/RMSprop/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
]
training/RMSprop/Const_2Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/RMSprop/clip_by_value/MinimumMinimumtraining/RMSprop/addtraining/RMSprop/Const_2*
T0*
_output_shapes
:	


training/RMSprop/clip_by_valueMaximum&training/RMSprop/clip_by_value/Minimumtraining/RMSprop/Const_1*
T0*
_output_shapes
:	

g
training/RMSprop/SqrtSqrttraining/RMSprop/clip_by_value*
T0*
_output_shapes
:	

]
training/RMSprop/add_1/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
x
training/RMSprop/add_1Addtraining/RMSprop/Sqrttraining/RMSprop/add_1/y*
T0*
_output_shapes
:	

}
training/RMSprop/truedivRealDivtraining/RMSprop/mul_2training/RMSprop/add_1*
T0*
_output_shapes
:	

o
!training/RMSprop/ReadVariableOp_5ReadVariableOpdense/kernel*
dtype0*
_output_shapes
:	


training/RMSprop/sub_1Sub!training/RMSprop/ReadVariableOp_5training/RMSprop/truediv*
T0*
_output_shapes
:	

j
#training/RMSprop/AssignVariableOp_1AssignVariableOpdense/kerneltraining/RMSprop/sub_1*
dtype0

!training/RMSprop/ReadVariableOp_6ReadVariableOpdense/kernel$^training/RMSprop/AssignVariableOp_1*
dtype0*
_output_shapes
:	

e
!training/RMSprop/ReadVariableOp_7ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
~
%training/RMSprop/mul_3/ReadVariableOpReadVariableOptraining/RMSprop/Variable_1*
dtype0*
_output_shapes	
:

training/RMSprop/mul_3Mul!training/RMSprop/ReadVariableOp_7%training/RMSprop/mul_3/ReadVariableOp*
T0*
_output_shapes	
:
e
!training/RMSprop/ReadVariableOp_8ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
]
training/RMSprop/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training/RMSprop/sub_2Subtraining/RMSprop/sub_2/x!training/RMSprop/ReadVariableOp_8*
T0*
_output_shapes
: 

training/RMSprop/Square_1Square9training/RMSprop/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
v
training/RMSprop/mul_4Multraining/RMSprop/sub_2training/RMSprop/Square_1*
T0*
_output_shapes	
:
s
training/RMSprop/add_2Addtraining/RMSprop/mul_3training/RMSprop/mul_4*
T0*
_output_shapes	
:
y
#training/RMSprop/AssignVariableOp_2AssignVariableOptraining/RMSprop/Variable_1training/RMSprop/add_2*
dtype0
 
!training/RMSprop/ReadVariableOp_9ReadVariableOptraining/RMSprop/Variable_1$^training/RMSprop/AssignVariableOp_2*
dtype0*
_output_shapes	
:
e
"training/RMSprop/ReadVariableOp_10ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
˘
training/RMSprop/mul_5Mul"training/RMSprop/ReadVariableOp_109training/RMSprop/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
]
training/RMSprop/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_4Const*
valueB
 *  *
dtype0*
_output_shapes
: 

(training/RMSprop/clip_by_value_1/MinimumMinimumtraining/RMSprop/add_2training/RMSprop/Const_4*
T0*
_output_shapes	
:

 training/RMSprop/clip_by_value_1Maximum(training/RMSprop/clip_by_value_1/Minimumtraining/RMSprop/Const_3*
T0*
_output_shapes	
:
g
training/RMSprop/Sqrt_1Sqrt training/RMSprop/clip_by_value_1*
_output_shapes	
:*
T0
]
training/RMSprop/add_3/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
v
training/RMSprop/add_3Addtraining/RMSprop/Sqrt_1training/RMSprop/add_3/y*
_output_shapes	
:*
T0
{
training/RMSprop/truediv_1RealDivtraining/RMSprop/mul_5training/RMSprop/add_3*
T0*
_output_shapes	
:
j
"training/RMSprop/ReadVariableOp_11ReadVariableOp
dense/bias*
dtype0*
_output_shapes	
:

training/RMSprop/sub_3Sub"training/RMSprop/ReadVariableOp_11training/RMSprop/truediv_1*
_output_shapes	
:*
T0
h
#training/RMSprop/AssignVariableOp_3AssignVariableOp
dense/biastraining/RMSprop/sub_3*
dtype0

"training/RMSprop/ReadVariableOp_12ReadVariableOp
dense/bias$^training/RMSprop/AssignVariableOp_3*
_output_shapes	
:*
dtype0
f
"training/RMSprop/ReadVariableOp_13ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 

%training/RMSprop/mul_6/ReadVariableOpReadVariableOptraining/RMSprop/Variable_2*
dtype0* 
_output_shapes
:


training/RMSprop/mul_6Mul"training/RMSprop/ReadVariableOp_13%training/RMSprop/mul_6/ReadVariableOp* 
_output_shapes
:
*
T0
f
"training/RMSprop/ReadVariableOp_14ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
]
training/RMSprop/sub_4/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
|
training/RMSprop/sub_4Subtraining/RMSprop/sub_4/x"training/RMSprop/ReadVariableOp_14*
_output_shapes
: *
T0

training/RMSprop/Square_2Square7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

{
training/RMSprop/mul_7Multraining/RMSprop/sub_4training/RMSprop/Square_2*
T0* 
_output_shapes
:

x
training/RMSprop/add_4Addtraining/RMSprop/mul_6training/RMSprop/mul_7* 
_output_shapes
:
*
T0
y
#training/RMSprop/AssignVariableOp_4AssignVariableOptraining/RMSprop/Variable_2training/RMSprop/add_4*
dtype0
Ś
"training/RMSprop/ReadVariableOp_15ReadVariableOptraining/RMSprop/Variable_2$^training/RMSprop/AssignVariableOp_4* 
_output_shapes
:
*
dtype0
e
"training/RMSprop/ReadVariableOp_16ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
Ľ
training/RMSprop/mul_8Mul"training/RMSprop/ReadVariableOp_167training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

]
training/RMSprop/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_6Const*
dtype0*
_output_shapes
: *
valueB
 *  

(training/RMSprop/clip_by_value_2/MinimumMinimumtraining/RMSprop/add_4training/RMSprop/Const_6*
T0* 
_output_shapes
:


 training/RMSprop/clip_by_value_2Maximum(training/RMSprop/clip_by_value_2/Minimumtraining/RMSprop/Const_5* 
_output_shapes
:
*
T0
l
training/RMSprop/Sqrt_2Sqrt training/RMSprop/clip_by_value_2*
T0* 
_output_shapes
:

]
training/RMSprop/add_5/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
{
training/RMSprop/add_5Addtraining/RMSprop/Sqrt_2training/RMSprop/add_5/y*
T0* 
_output_shapes
:


training/RMSprop/truediv_2RealDivtraining/RMSprop/mul_8training/RMSprop/add_5*
T0* 
_output_shapes
:

s
"training/RMSprop/ReadVariableOp_17ReadVariableOpdense_1/kernel*
dtype0* 
_output_shapes
:


training/RMSprop/sub_5Sub"training/RMSprop/ReadVariableOp_17training/RMSprop/truediv_2*
T0* 
_output_shapes
:

l
#training/RMSprop/AssignVariableOp_5AssignVariableOpdense_1/kerneltraining/RMSprop/sub_5*
dtype0

"training/RMSprop/ReadVariableOp_18ReadVariableOpdense_1/kernel$^training/RMSprop/AssignVariableOp_5* 
_output_shapes
:
*
dtype0
f
"training/RMSprop/ReadVariableOp_19ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
~
%training/RMSprop/mul_9/ReadVariableOpReadVariableOptraining/RMSprop/Variable_3*
dtype0*
_output_shapes	
:

training/RMSprop/mul_9Mul"training/RMSprop/ReadVariableOp_19%training/RMSprop/mul_9/ReadVariableOp*
_output_shapes	
:*
T0
f
"training/RMSprop/ReadVariableOp_20ReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
]
training/RMSprop/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
|
training/RMSprop/sub_6Subtraining/RMSprop/sub_6/x"training/RMSprop/ReadVariableOp_20*
T0*
_output_shapes
: 

training/RMSprop/Square_3Square;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
w
training/RMSprop/mul_10Multraining/RMSprop/sub_6training/RMSprop/Square_3*
_output_shapes	
:*
T0
t
training/RMSprop/add_6Addtraining/RMSprop/mul_9training/RMSprop/mul_10*
_output_shapes	
:*
T0
y
#training/RMSprop/AssignVariableOp_6AssignVariableOptraining/RMSprop/Variable_3training/RMSprop/add_6*
dtype0
Ą
"training/RMSprop/ReadVariableOp_21ReadVariableOptraining/RMSprop/Variable_3$^training/RMSprop/AssignVariableOp_6*
dtype0*
_output_shapes	
:
e
"training/RMSprop/ReadVariableOp_22ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
Ľ
training/RMSprop/mul_11Mul"training/RMSprop/ReadVariableOp_22;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
]
training/RMSprop/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_8Const*
_output_shapes
: *
valueB
 *  *
dtype0

(training/RMSprop/clip_by_value_3/MinimumMinimumtraining/RMSprop/add_6training/RMSprop/Const_8*
_output_shapes	
:*
T0

 training/RMSprop/clip_by_value_3Maximum(training/RMSprop/clip_by_value_3/Minimumtraining/RMSprop/Const_7*
_output_shapes	
:*
T0
g
training/RMSprop/Sqrt_3Sqrt training/RMSprop/clip_by_value_3*
_output_shapes	
:*
T0
]
training/RMSprop/add_7/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
v
training/RMSprop/add_7Addtraining/RMSprop/Sqrt_3training/RMSprop/add_7/y*
T0*
_output_shapes	
:
|
training/RMSprop/truediv_3RealDivtraining/RMSprop/mul_11training/RMSprop/add_7*
_output_shapes	
:*
T0
l
"training/RMSprop/ReadVariableOp_23ReadVariableOpdense_1/bias*
_output_shapes	
:*
dtype0

training/RMSprop/sub_7Sub"training/RMSprop/ReadVariableOp_23training/RMSprop/truediv_3*
_output_shapes	
:*
T0
j
#training/RMSprop/AssignVariableOp_7AssignVariableOpdense_1/biastraining/RMSprop/sub_7*
dtype0

"training/RMSprop/ReadVariableOp_24ReadVariableOpdense_1/bias$^training/RMSprop/AssignVariableOp_7*
dtype0*
_output_shapes	
:
f
"training/RMSprop/ReadVariableOp_25ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 

&training/RMSprop/mul_12/ReadVariableOpReadVariableOptraining/RMSprop/Variable_4*
dtype0*
_output_shapes
:	


training/RMSprop/mul_12Mul"training/RMSprop/ReadVariableOp_25&training/RMSprop/mul_12/ReadVariableOp*
T0*
_output_shapes
:	

f
"training/RMSprop/ReadVariableOp_26ReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
]
training/RMSprop/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
|
training/RMSprop/sub_8Subtraining/RMSprop/sub_8/x"training/RMSprop/ReadVariableOp_26*
_output_shapes
: *
T0

training/RMSprop/Square_4Square7training/RMSprop/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	

{
training/RMSprop/mul_13Multraining/RMSprop/sub_8training/RMSprop/Square_4*
T0*
_output_shapes
:	

y
training/RMSprop/add_8Addtraining/RMSprop/mul_12training/RMSprop/mul_13*
T0*
_output_shapes
:	

y
#training/RMSprop/AssignVariableOp_8AssignVariableOptraining/RMSprop/Variable_4training/RMSprop/add_8*
dtype0
Ľ
"training/RMSprop/ReadVariableOp_27ReadVariableOptraining/RMSprop/Variable_4$^training/RMSprop/AssignVariableOp_8*
dtype0*
_output_shapes
:	

e
"training/RMSprop/ReadVariableOp_28ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
Ľ
training/RMSprop/mul_14Mul"training/RMSprop/ReadVariableOp_287training/RMSprop/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	
*
T0
]
training/RMSprop/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/RMSprop/Const_10Const*
valueB
 *  *
dtype0*
_output_shapes
: 

(training/RMSprop/clip_by_value_4/MinimumMinimumtraining/RMSprop/add_8training/RMSprop/Const_10*
_output_shapes
:	
*
T0

 training/RMSprop/clip_by_value_4Maximum(training/RMSprop/clip_by_value_4/Minimumtraining/RMSprop/Const_9*
_output_shapes
:	
*
T0
k
training/RMSprop/Sqrt_4Sqrt training/RMSprop/clip_by_value_4*
_output_shapes
:	
*
T0
]
training/RMSprop/add_9/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
z
training/RMSprop/add_9Addtraining/RMSprop/Sqrt_4training/RMSprop/add_9/y*
T0*
_output_shapes
:	


training/RMSprop/truediv_4RealDivtraining/RMSprop/mul_14training/RMSprop/add_9*
T0*
_output_shapes
:	

r
"training/RMSprop/ReadVariableOp_29ReadVariableOpdense_2/kernel*
dtype0*
_output_shapes
:	


training/RMSprop/sub_9Sub"training/RMSprop/ReadVariableOp_29training/RMSprop/truediv_4*
T0*
_output_shapes
:	

l
#training/RMSprop/AssignVariableOp_9AssignVariableOpdense_2/kerneltraining/RMSprop/sub_9*
dtype0

"training/RMSprop/ReadVariableOp_30ReadVariableOpdense_2/kernel$^training/RMSprop/AssignVariableOp_9*
dtype0*
_output_shapes
:	

f
"training/RMSprop/ReadVariableOp_31ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
~
&training/RMSprop/mul_15/ReadVariableOpReadVariableOptraining/RMSprop/Variable_5*
dtype0*
_output_shapes
:


training/RMSprop/mul_15Mul"training/RMSprop/ReadVariableOp_31&training/RMSprop/mul_15/ReadVariableOp*
T0*
_output_shapes
:

f
"training/RMSprop/ReadVariableOp_32ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
^
training/RMSprop/sub_10/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
~
training/RMSprop/sub_10Subtraining/RMSprop/sub_10/x"training/RMSprop/ReadVariableOp_32*
T0*
_output_shapes
: 

training/RMSprop/Square_5Square;training/RMSprop/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
w
training/RMSprop/mul_16Multraining/RMSprop/sub_10training/RMSprop/Square_5*
_output_shapes
:
*
T0
u
training/RMSprop/add_10Addtraining/RMSprop/mul_15training/RMSprop/mul_16*
T0*
_output_shapes
:

{
$training/RMSprop/AssignVariableOp_10AssignVariableOptraining/RMSprop/Variable_5training/RMSprop/add_10*
dtype0
Ą
"training/RMSprop/ReadVariableOp_33ReadVariableOptraining/RMSprop/Variable_5%^training/RMSprop/AssignVariableOp_10*
dtype0*
_output_shapes
:

e
"training/RMSprop/ReadVariableOp_34ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
¤
training/RMSprop/mul_17Mul"training/RMSprop/ReadVariableOp_34;training/RMSprop/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

^
training/RMSprop/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/RMSprop/Const_12Const*
valueB
 *  *
dtype0*
_output_shapes
: 

(training/RMSprop/clip_by_value_5/MinimumMinimumtraining/RMSprop/add_10training/RMSprop/Const_12*
T0*
_output_shapes
:


 training/RMSprop/clip_by_value_5Maximum(training/RMSprop/clip_by_value_5/Minimumtraining/RMSprop/Const_11*
_output_shapes
:
*
T0
f
training/RMSprop/Sqrt_5Sqrt training/RMSprop/clip_by_value_5*
_output_shapes
:
*
T0
^
training/RMSprop/add_11/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
w
training/RMSprop/add_11Addtraining/RMSprop/Sqrt_5training/RMSprop/add_11/y*
_output_shapes
:
*
T0
|
training/RMSprop/truediv_5RealDivtraining/RMSprop/mul_17training/RMSprop/add_11*
_output_shapes
:
*
T0
k
"training/RMSprop/ReadVariableOp_35ReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:


training/RMSprop/sub_11Sub"training/RMSprop/ReadVariableOp_35training/RMSprop/truediv_5*
_output_shapes
:
*
T0
l
$training/RMSprop/AssignVariableOp_11AssignVariableOpdense_2/biastraining/RMSprop/sub_11*
dtype0

"training/RMSprop/ReadVariableOp_36ReadVariableOpdense_2/bias%^training/RMSprop/AssignVariableOp_11*
dtype0*
_output_shapes
:


training_1/group_depsNoOp	^loss/mul^metrics/acc/div_no_nan ^training/RMSprop/ReadVariableOp#^training/RMSprop/ReadVariableOp_12#^training/RMSprop/ReadVariableOp_15#^training/RMSprop/ReadVariableOp_18#^training/RMSprop/ReadVariableOp_21#^training/RMSprop/ReadVariableOp_24#^training/RMSprop/ReadVariableOp_27"^training/RMSprop/ReadVariableOp_3#^training/RMSprop/ReadVariableOp_30#^training/RMSprop/ReadVariableOp_33#^training/RMSprop/ReadVariableOp_36"^training/RMSprop/ReadVariableOp_6"^training/RMSprop/ReadVariableOp_9
A
evaluation/group_depsNoOp	^loss/mul^metrics/acc/div_no_nan
L
PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 
E
AssignVariableOpAssignVariableOptotalPlaceholder*
dtype0
_
ReadVariableOpReadVariableOptotal^AssignVariableOp*
dtype0*
_output_shapes
: 
]
VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_5*
_output_shapes
: 
R
VarIsInitializedOp_1VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
_
VarIsInitializedOp_2VarIsInitializedOptraining/RMSprop/Variable_2*
_output_shapes
: 
P
VarIsInitializedOp_3VarIsInitializedOpdense_2/bias*
_output_shapes
: 
I
VarIsInitializedOp_4VarIsInitializedOptotal*
_output_shapes
: 
N
VarIsInitializedOp_5VarIsInitializedOp
dense/bias*
_output_shapes
: 
P
VarIsInitializedOp_6VarIsInitializedOpdense/kernel*
_output_shapes
: 
I
VarIsInitializedOp_7VarIsInitializedOpcount*
_output_shapes
: 
Q
VarIsInitializedOp_8VarIsInitializedOpRMSprop/decay*
_output_shapes
: 
_
VarIsInitializedOp_9VarIsInitializedOptraining/RMSprop/Variable_1*
_output_shapes
: 
P
VarIsInitializedOp_10VarIsInitializedOpRMSprop/rho*
_output_shapes
: 
S
VarIsInitializedOp_11VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
O
VarIsInitializedOp_12VarIsInitializedOp
RMSprop/lr*
_output_shapes
: 
^
VarIsInitializedOp_13VarIsInitializedOptraining/RMSprop/Variable*
_output_shapes
: 
W
VarIsInitializedOp_14VarIsInitializedOpRMSprop/iterations*
_output_shapes
: 
`
VarIsInitializedOp_15VarIsInitializedOptraining/RMSprop/Variable_3*
_output_shapes
: 
Q
VarIsInitializedOp_16VarIsInitializedOpdense_1/bias*
_output_shapes
: 
`
VarIsInitializedOp_17VarIsInitializedOptraining/RMSprop/Variable_4*
_output_shapes
: 
č
initNoOp^RMSprop/decay/Assign^RMSprop/iterations/Assign^RMSprop/lr/Assign^RMSprop/rho/Assign^count/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^total/Assign!^training/RMSprop/Variable/Assign#^training/RMSprop/Variable_1/Assign#^training/RMSprop/Variable_2/Assign#^training/RMSprop/Variable_3/Assign#^training/RMSprop/Variable_4/Assign#^training/RMSprop/Variable_5/Assign
N
Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
I
AssignVariableOp_1AssignVariableOpcountPlaceholder_1*
dtype0
c
ReadVariableOp_1ReadVariableOpcount^AssignVariableOp_1*
dtype0*
_output_shapes
: 
,
predict/group_depsNoOp^dense_2/Softmax
p
dense_input_1Placeholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shape:˙˙˙˙˙˙˙˙˙

Ł
/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"
      *!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:

-dense_3/kernel/Initializer/random_uniform/minConst*
valueB
 *ŘĘž*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 

-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *ŘĘ>*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
ě
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	
*

seed *
T0*!
_class
loc:@dense_3/kernel*
seed2 
Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
é
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
:	

Ű
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
:	

­
dense_3/kernelVarHandleOp*!
_class
loc:@dense_3/kernel*
	container *
shape:	
*
dtype0*
_output_shapes
: *
shared_namedense_3/kernel
m
/dense_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/kernel*
_output_shapes
: 

dense_3/kernel/AssignAssignVariableOpdense_3/kernel)dense_3/kernel/Initializer/random_uniform*!
_class
loc:@dense_3/kernel*
dtype0

"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:	


dense_3/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_3/bias*
dtype0*
_output_shapes	
:
Ł
dense_3/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_3/bias*
_class
loc:@dense_3/bias*
	container *
shape:
i
-dense_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/bias*
_output_shapes
: 

dense_3/bias/AssignAssignVariableOpdense_3/biasdense_3/bias/Initializer/zeros*
_class
loc:@dense_3/bias*
dtype0

 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes	
:
m
dense_3/MatMul/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	
*
dtype0

dense_3/MatMulMatMuldense_input_1dense_3/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
h
dense_3/BiasAdd/ReadVariableOpReadVariableOpdense_3/bias*
dtype0*
_output_shapes	
:

dense_3/BiasAddBiasAdddense_3/MatMuldense_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
dense_3/ReluReludense_3/BiasAdd*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
_
dropout_2/IdentityIdentitydense_3/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
1dense_1_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *#
_class
loc:@dense_1_1/kernel*
dtype0*
_output_shapes
:

/dense_1_1/kernel/Initializer/random_uniform/minConst*
valueB
 *   ž*#
_class
loc:@dense_1_1/kernel*
dtype0*
_output_shapes
: 

/dense_1_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*#
_class
loc:@dense_1_1/kernel*
dtype0*
_output_shapes
: 
ó
9dense_1_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1dense_1_1/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*#
_class
loc:@dense_1_1/kernel*
seed2 
Ţ
/dense_1_1/kernel/Initializer/random_uniform/subSub/dense_1_1/kernel/Initializer/random_uniform/max/dense_1_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@dense_1_1/kernel*
_output_shapes
: 
ň
/dense_1_1/kernel/Initializer/random_uniform/mulMul9dense_1_1/kernel/Initializer/random_uniform/RandomUniform/dense_1_1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@dense_1_1/kernel* 
_output_shapes
:

ä
+dense_1_1/kernel/Initializer/random_uniformAdd/dense_1_1/kernel/Initializer/random_uniform/mul/dense_1_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@dense_1_1/kernel* 
_output_shapes
:

´
dense_1_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namedense_1_1/kernel*#
_class
loc:@dense_1_1/kernel*
	container *
shape:

q
1dense_1_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1_1/kernel*
_output_shapes
: 

dense_1_1/kernel/AssignAssignVariableOpdense_1_1/kernel+dense_1_1/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@dense_1_1/kernel

$dense_1_1/kernel/Read/ReadVariableOpReadVariableOpdense_1_1/kernel*
dtype0* 
_output_shapes
:
*#
_class
loc:@dense_1_1/kernel

 dense_1_1/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@dense_1_1/bias*
dtype0*
_output_shapes	
:
Š
dense_1_1/biasVarHandleOp*
shared_namedense_1_1/bias*!
_class
loc:@dense_1_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
m
/dense_1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1_1/bias*
_output_shapes
: 

dense_1_1/bias/AssignAssignVariableOpdense_1_1/bias dense_1_1/bias/Initializer/zeros*!
_class
loc:@dense_1_1/bias*
dtype0

"dense_1_1/bias/Read/ReadVariableOpReadVariableOpdense_1_1/bias*!
_class
loc:@dense_1_1/bias*
dtype0*
_output_shapes	
:
r
dense_1_1/MatMul/ReadVariableOpReadVariableOpdense_1_1/kernel*
dtype0* 
_output_shapes
:

¨
dense_1_1/MatMulMatMuldropout_2/Identitydense_1_1/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
l
 dense_1_1/BiasAdd/ReadVariableOpReadVariableOpdense_1_1/bias*
dtype0*
_output_shapes	
:

dense_1_1/BiasAddBiasAdddense_1_1/MatMul dense_1_1/BiasAdd/ReadVariableOp*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
\
dense_1_1/ReluReludense_1_1/BiasAdd*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
c
dropout_1_1/IdentityIdentitydense_1_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
1dense_2_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"   
   *#
_class
loc:@dense_2_1/kernel*
dtype0

/dense_2_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ÍUž*#
_class
loc:@dense_2_1/kernel

/dense_2_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *ÍU>*#
_class
loc:@dense_2_1/kernel*
dtype0*
_output_shapes
: 
ň
9dense_2_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1dense_2_1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	
*

seed *
T0*#
_class
loc:@dense_2_1/kernel
Ţ
/dense_2_1/kernel/Initializer/random_uniform/subSub/dense_2_1/kernel/Initializer/random_uniform/max/dense_2_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@dense_2_1/kernel*
_output_shapes
: 
ń
/dense_2_1/kernel/Initializer/random_uniform/mulMul9dense_2_1/kernel/Initializer/random_uniform/RandomUniform/dense_2_1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@dense_2_1/kernel*
_output_shapes
:	

ă
+dense_2_1/kernel/Initializer/random_uniformAdd/dense_2_1/kernel/Initializer/random_uniform/mul/dense_2_1/kernel/Initializer/random_uniform/min*
_output_shapes
:	
*
T0*#
_class
loc:@dense_2_1/kernel
ł
dense_2_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namedense_2_1/kernel*#
_class
loc:@dense_2_1/kernel*
	container *
shape:	

q
1dense_2_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2_1/kernel*
_output_shapes
: 

dense_2_1/kernel/AssignAssignVariableOpdense_2_1/kernel+dense_2_1/kernel/Initializer/random_uniform*#
_class
loc:@dense_2_1/kernel*
dtype0

$dense_2_1/kernel/Read/ReadVariableOpReadVariableOpdense_2_1/kernel*#
_class
loc:@dense_2_1/kernel*
dtype0*
_output_shapes
:	


 dense_2_1/bias/Initializer/zerosConst*
valueB
*    *!
_class
loc:@dense_2_1/bias*
dtype0*
_output_shapes
:

¨
dense_2_1/biasVarHandleOp*!
_class
loc:@dense_2_1/bias*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namedense_2_1/bias
m
/dense_2_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2_1/bias*
_output_shapes
: 

dense_2_1/bias/AssignAssignVariableOpdense_2_1/bias dense_2_1/bias/Initializer/zeros*!
_class
loc:@dense_2_1/bias*
dtype0

"dense_2_1/bias/Read/ReadVariableOpReadVariableOpdense_2_1/bias*!
_class
loc:@dense_2_1/bias*
dtype0*
_output_shapes
:

q
dense_2_1/MatMul/ReadVariableOpReadVariableOpdense_2_1/kernel*
_output_shapes
:	
*
dtype0
Š
dense_2_1/MatMulMatMuldropout_1_1/Identitydense_2_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( *
transpose_b( 
k
 dense_2_1/BiasAdd/ReadVariableOpReadVariableOpdense_2_1/bias*
dtype0*
_output_shapes
:


dense_2_1/BiasAddBiasAdddense_2_1/MatMul dense_2_1/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
a
dense_2_1/SoftmaxSoftmaxdense_2_1/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

`
Placeholder_2Placeholder*
dtype0*
_output_shapes
:	
*
shape:	

R
AssignVariableOp_2AssignVariableOpdense_3/kernelPlaceholder_2*
dtype0
u
ReadVariableOp_2ReadVariableOpdense_3/kernel^AssignVariableOp_2*
dtype0*
_output_shapes
:	

X
Placeholder_3Placeholder*
dtype0*
_output_shapes	
:*
shape:
P
AssignVariableOp_3AssignVariableOpdense_3/biasPlaceholder_3*
dtype0
o
ReadVariableOp_3ReadVariableOpdense_3/bias^AssignVariableOp_3*
_output_shapes	
:*
dtype0
b
Placeholder_4Placeholder*
shape:
*
dtype0* 
_output_shapes
:

T
AssignVariableOp_4AssignVariableOpdense_1_1/kernelPlaceholder_4*
dtype0
x
ReadVariableOp_4ReadVariableOpdense_1_1/kernel^AssignVariableOp_4*
dtype0* 
_output_shapes
:

X
Placeholder_5Placeholder*
_output_shapes	
:*
shape:*
dtype0
R
AssignVariableOp_5AssignVariableOpdense_1_1/biasPlaceholder_5*
dtype0
q
ReadVariableOp_5ReadVariableOpdense_1_1/bias^AssignVariableOp_5*
dtype0*
_output_shapes	
:
`
Placeholder_6Placeholder*
dtype0*
_output_shapes
:	
*
shape:	

T
AssignVariableOp_6AssignVariableOpdense_2_1/kernelPlaceholder_6*
dtype0
w
ReadVariableOp_6ReadVariableOpdense_2_1/kernel^AssignVariableOp_6*
dtype0*
_output_shapes
:	

V
Placeholder_7Placeholder*
shape:
*
dtype0*
_output_shapes
:

R
AssignVariableOp_7AssignVariableOpdense_2_1/biasPlaceholder_7*
dtype0
p
ReadVariableOp_7ReadVariableOpdense_2_1/bias^AssignVariableOp_7*
dtype0*
_output_shapes
:

Q
VarIsInitializedOp_18VarIsInitializedOpdense_3/bias*
_output_shapes
: 
S
VarIsInitializedOp_19VarIsInitializedOpdense_3/kernel*
_output_shapes
: 
S
VarIsInitializedOp_20VarIsInitializedOpdense_1_1/bias*
_output_shapes
: 
U
VarIsInitializedOp_21VarIsInitializedOpdense_1_1/kernel*
_output_shapes
: 
S
VarIsInitializedOp_22VarIsInitializedOpdense_2_1/bias*
_output_shapes
: 
U
VarIsInitializedOp_23VarIsInitializedOpdense_2_1/kernel*
_output_shapes
: 
 
init_1NoOp^dense_1_1/bias/Assign^dense_1_1/kernel/Assign^dense_2_1/bias/Assign^dense_2_1/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_7d87f81945f541b5ade9b1fa489ccdd3/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*ľ
valueŤB¨BRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_1_1/biasBdense_1_1/kernelBdense_2/biasBdense_2/kernelBdense_2_1/biasBdense_2_1/kernelBdense_3/biasBdense_3/kernelBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4Btraining/RMSprop/Variable_5

save/SaveV2/shape_and_slicesConst"/device:CPU:0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
đ
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!RMSprop/decay/Read/ReadVariableOp&RMSprop/iterations/Read/ReadVariableOpRMSprop/lr/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp"dense_1_1/bias/Read/ReadVariableOp$dense_1_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp"dense_2_1/bias/Read/ReadVariableOp$dense_2_1/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp-training/RMSprop/Variable/Read/ReadVariableOp/training/RMSprop/Variable_1/Read/ReadVariableOp/training/RMSprop/Variable_2/Read/ReadVariableOp/training/RMSprop/Variable_3/Read/ReadVariableOp/training/RMSprop/Variable_4/Read/ReadVariableOp/training/RMSprop/Variable_5/Read/ReadVariableOp"/device:CPU:0*$
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*ľ
valueŤB¨BRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_1_1/biasBdense_1_1/kernelBdense_2/biasBdense_2/kernelBdense_2_1/biasBdense_2_1/kernelBdense_3/biasBdense_3/kernelBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4Btraining/RMSprop/Variable_5*
dtype0*
_output_shapes
:
Ą
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
V
save/AssignVariableOpAssignVariableOpRMSprop/decaysave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0	
]
save/AssignVariableOp_1AssignVariableOpRMSprop/iterationssave/Identity_2*
dtype0	
P
save/Identity_3Identitysave/RestoreV2:2*
_output_shapes
:*
T0
U
save/AssignVariableOp_2AssignVariableOp
RMSprop/lrsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
V
save/AssignVariableOp_3AssignVariableOpRMSprop/rhosave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
_output_shapes
:*
T0
U
save/AssignVariableOp_4AssignVariableOp
dense/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
_output_shapes
:*
T0
W
save/AssignVariableOp_5AssignVariableOpdense/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
W
save/AssignVariableOp_6AssignVariableOpdense_1/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
Y
save/AssignVariableOp_7AssignVariableOpdense_1/kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Y
save/AssignVariableOp_8AssignVariableOpdense_1_1/biassave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
_output_shapes
:*
T0
\
save/AssignVariableOp_9AssignVariableOpdense_1_1/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
_output_shapes
:*
T0
Y
save/AssignVariableOp_10AssignVariableOpdense_2/biassave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
_output_shapes
:*
T0
[
save/AssignVariableOp_11AssignVariableOpdense_2/kernelsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
[
save/AssignVariableOp_12AssignVariableOpdense_2_1/biassave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
]
save/AssignVariableOp_13AssignVariableOpdense_2_1/kernelsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
Y
save/AssignVariableOp_14AssignVariableOpdense_3/biassave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
[
save/AssignVariableOp_15AssignVariableOpdense_3/kernelsave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
f
save/AssignVariableOp_16AssignVariableOptraining/RMSprop/Variablesave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
h
save/AssignVariableOp_17AssignVariableOptraining/RMSprop/Variable_1save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
h
save/AssignVariableOp_18AssignVariableOptraining/RMSprop/Variable_2save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
h
save/AssignVariableOp_19AssignVariableOptraining/RMSprop/Variable_3save/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
_output_shapes
:*
T0
h
save/AssignVariableOp_20AssignVariableOptraining/RMSprop/Variable_4save/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
_output_shapes
:*
T0
h
save/AssignVariableOp_21AssignVariableOptraining/RMSprop/Variable_5save/Identity_22*
dtype0
ŕ
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"ĺ
trainable_variablesÍĘ
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
o
RMSprop/lr:0RMSprop/lr/Assign RMSprop/lr/Read/ReadVariableOp:0(2&RMSprop/lr/Initializer/initial_value:08
s
RMSprop/rho:0RMSprop/rho/Assign!RMSprop/rho/Read/ReadVariableOp:0(2'RMSprop/rho/Initializer/initial_value:08
{
RMSprop/decay:0RMSprop/decay/Assign#RMSprop/decay/Read/ReadVariableOp:0(2)RMSprop/decay/Initializer/initial_value:08

RMSprop/iterations:0RMSprop/iterations/Assign(RMSprop/iterations/Read/ReadVariableOp:0(2.RMSprop/iterations/Initializer/initial_value:08

training/RMSprop/Variable:0 training/RMSprop/Variable/Assign/training/RMSprop/Variable/Read/ReadVariableOp:0(2training/RMSprop/zeros:08

training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign1training/RMSprop/Variable_1/Read/ReadVariableOp:0(2training/RMSprop/zeros_1:08

training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign1training/RMSprop/Variable_2/Read/ReadVariableOp:0(2training/RMSprop/zeros_2:08

training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign1training/RMSprop/Variable_3/Read/ReadVariableOp:0(2training/RMSprop/zeros_3:08

training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign1training/RMSprop/Variable_4/Read/ReadVariableOp:0(2training/RMSprop/zeros_4:08

training/RMSprop/Variable_5:0"training/RMSprop/Variable_5/Assign1training/RMSprop/Variable_5/Read/ReadVariableOp:0(2training/RMSprop/zeros_5:08

dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08

dense_1_1/kernel:0dense_1_1/kernel/Assign&dense_1_1/kernel/Read/ReadVariableOp:0(2-dense_1_1/kernel/Initializer/random_uniform:08
w
dense_1_1/bias:0dense_1_1/bias/Assign$dense_1_1/bias/Read/ReadVariableOp:0(2"dense_1_1/bias/Initializer/zeros:08

dense_2_1/kernel:0dense_2_1/kernel/Assign&dense_2_1/kernel/Read/ReadVariableOp:0(2-dense_2_1/kernel/Initializer/random_uniform:08
w
dense_2_1/bias:0dense_2_1/bias/Assign$dense_2_1/bias/Read/ReadVariableOp:0(2"dense_2_1/bias/Initializer/zeros:08"Éy
cond_context¸yľy
Ú
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textQloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *Ű
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1Ś
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Y
Sloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*Ř)
iloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
iloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
wloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Floss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rank:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ś
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Á
Floss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rank:0wloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Ő
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ň
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ä
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank:0yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02í"
ę"
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textkloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 * 
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0×
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ô
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ú
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02š

ś

mloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*é
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0Ú
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ŕ
ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0

Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textNloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *
Yloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
ˇ
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*Á
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
[loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0 
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0˘
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0Ą
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0§
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0"Ű
	variablesÍĘ
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
o
RMSprop/lr:0RMSprop/lr/Assign RMSprop/lr/Read/ReadVariableOp:0(2&RMSprop/lr/Initializer/initial_value:08
s
RMSprop/rho:0RMSprop/rho/Assign!RMSprop/rho/Read/ReadVariableOp:0(2'RMSprop/rho/Initializer/initial_value:08
{
RMSprop/decay:0RMSprop/decay/Assign#RMSprop/decay/Read/ReadVariableOp:0(2)RMSprop/decay/Initializer/initial_value:08

RMSprop/iterations:0RMSprop/iterations/Assign(RMSprop/iterations/Read/ReadVariableOp:0(2.RMSprop/iterations/Initializer/initial_value:08

training/RMSprop/Variable:0 training/RMSprop/Variable/Assign/training/RMSprop/Variable/Read/ReadVariableOp:0(2training/RMSprop/zeros:08

training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign1training/RMSprop/Variable_1/Read/ReadVariableOp:0(2training/RMSprop/zeros_1:08

training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign1training/RMSprop/Variable_2/Read/ReadVariableOp:0(2training/RMSprop/zeros_2:08

training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign1training/RMSprop/Variable_3/Read/ReadVariableOp:0(2training/RMSprop/zeros_3:08

training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign1training/RMSprop/Variable_4/Read/ReadVariableOp:0(2training/RMSprop/zeros_4:08

training/RMSprop/Variable_5:0"training/RMSprop/Variable_5/Assign1training/RMSprop/Variable_5/Read/ReadVariableOp:0(2training/RMSprop/zeros_5:08

dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08

dense_1_1/kernel:0dense_1_1/kernel/Assign&dense_1_1/kernel/Read/ReadVariableOp:0(2-dense_1_1/kernel/Initializer/random_uniform:08
w
dense_1_1/bias:0dense_1_1/bias/Assign$dense_1_1/bias/Read/ReadVariableOp:0(2"dense_1_1/bias/Initializer/zeros:08

dense_2_1/kernel:0dense_2_1/kernel/Assign&dense_2_1/kernel/Read/ReadVariableOp:0(2-dense_2_1/kernel/Initializer/random_uniform:08
w
dense_2_1/bias:0dense_2_1/bias/Assign$dense_2_1/bias/Read/ReadVariableOp:0(2"dense_2_1/bias/Initializer/zeros:08*
serving_default
5
dense_input&
dense_input_1:0˙˙˙˙˙˙˙˙˙
5
dense_2*
dense_2_1/Softmax:0˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict