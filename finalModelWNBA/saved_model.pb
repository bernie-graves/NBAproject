??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
-
Sqrt
x"T
y"T"
Ttype:

2
?
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
executor_typestring ?
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:*
dtype0
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0	
}
dense_135/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_135/kernel
v
$dense_135/kernel/Read/ReadVariableOpReadVariableOpdense_135/kernel*
_output_shapes
:	?*
dtype0
u
dense_135/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_135/bias
n
"dense_135/bias/Read/ReadVariableOpReadVariableOpdense_135/bias*
_output_shapes	
:?*
dtype0
~
dense_136/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_136/kernel
w
$dense_136/kernel/Read/ReadVariableOpReadVariableOpdense_136/kernel* 
_output_shapes
:
??*
dtype0
u
dense_136/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_136/bias
n
"dense_136/bias/Read/ReadVariableOpReadVariableOpdense_136/bias*
_output_shapes	
:?*
dtype0
~
dense_137/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_137/kernel
w
$dense_137/kernel/Read/ReadVariableOpReadVariableOpdense_137/kernel* 
_output_shapes
:
??*
dtype0
u
dense_137/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_137/bias
n
"dense_137/bias/Read/ReadVariableOpReadVariableOpdense_137/bias*
_output_shapes	
:?*
dtype0
~
dense_138/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_138/kernel
w
$dense_138/kernel/Read/ReadVariableOpReadVariableOpdense_138/kernel* 
_output_shapes
:
??*
dtype0
u
dense_138/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_138/bias
n
"dense_138/bias/Read/ReadVariableOpReadVariableOpdense_138/bias*
_output_shapes	
:?*
dtype0
}
dense_139/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_139/kernel
v
$dense_139/kernel/Read/ReadVariableOpReadVariableOpdense_139/kernel*
_output_shapes
:	?*
dtype0
t
dense_139/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_139/bias
m
"dense_139/bias/Read/ReadVariableOpReadVariableOpdense_139/bias*
_output_shapes
:*
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
?
Adam/dense_135/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameAdam/dense_135/kernel/m
?
+Adam/dense_135/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_135/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_135/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_135/bias/m
|
)Adam/dense_135/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_135/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_136/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_136/kernel/m
?
+Adam/dense_136/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_136/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_136/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_136/bias/m
|
)Adam/dense_136/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_136/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_137/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_137/kernel/m
?
+Adam/dense_137/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_137/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_137/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_137/bias/m
|
)Adam/dense_137/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_137/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_138/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_138/kernel/m
?
+Adam/dense_138/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_138/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_138/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_138/bias/m
|
)Adam/dense_138/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_138/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_139/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameAdam/dense_139/kernel/m
?
+Adam/dense_139/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_139/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_139/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_139/bias/m
{
)Adam/dense_139/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_139/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_135/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameAdam/dense_135/kernel/v
?
+Adam/dense_135/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_135/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_135/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_135/bias/v
|
)Adam/dense_135/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_135/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_136/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_136/kernel/v
?
+Adam/dense_136/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_136/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_136/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_136/bias/v
|
)Adam/dense_136/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_136/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_137/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_137/kernel/v
?
+Adam/dense_137/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_137/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_137/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_137/bias/v
|
)Adam/dense_137/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_137/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_138/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_138/kernel/v
?
+Adam/dense_138/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_138/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_138/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_138/bias/v
|
)Adam/dense_138/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_138/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_139/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameAdam/dense_139/kernel/v
?
+Adam/dense_139/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_139/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_139/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_139/bias/v
{
)Adam/dense_139/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_139/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value?>B?> B?>
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
]
state_variables
_broadcast_shape
mean
variance
	count
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

 kernel
!bias
"	variables
#regularization_losses
$trainable_variables
%	keras_api
R
&	variables
'regularization_losses
(trainable_variables
)	keras_api
h

*kernel
+bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
R
0	variables
1regularization_losses
2trainable_variables
3	keras_api
h

4kernel
5bias
6	variables
7regularization_losses
8trainable_variables
9	keras_api
h

:kernel
;bias
<	variables
=regularization_losses
>trainable_variables
?	keras_api
?
@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_ratemwmx my!mz*m{+m|4m}5m~:m;m?v?v? v?!v?*v?+v?4v?5v?:v?;v?
^
0
1
2
3
4
 5
!6
*7
+8
49
510
:11
;12
 
F
0
1
 2
!3
*4
+5
46
57
:8
;9
?
Enon_trainable_variables
Fmetrics
	variables
Glayer_metrics

Hlayers
regularization_losses
trainable_variables
Ilayer_regularization_losses
 
#
mean
variance
	count
 
NL
VARIABLE_VALUEmean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEvariance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEcount5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE
 
\Z
VARIABLE_VALUEdense_135/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_135/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Jnon_trainable_variables
Kmetrics
	variables
Llayer_metrics

Mlayers
regularization_losses
trainable_variables
Nlayer_regularization_losses
 
 
 
?
Onon_trainable_variables
Pmetrics
	variables
Qlayer_metrics

Rlayers
regularization_losses
trainable_variables
Slayer_regularization_losses
\Z
VARIABLE_VALUEdense_136/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_136/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1
 

 0
!1
?
Tnon_trainable_variables
Umetrics
"	variables
Vlayer_metrics

Wlayers
#regularization_losses
$trainable_variables
Xlayer_regularization_losses
 
 
 
?
Ynon_trainable_variables
Zmetrics
&	variables
[layer_metrics

\layers
'regularization_losses
(trainable_variables
]layer_regularization_losses
\Z
VARIABLE_VALUEdense_137/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_137/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
 

*0
+1
?
^non_trainable_variables
_metrics
,	variables
`layer_metrics

alayers
-regularization_losses
.trainable_variables
blayer_regularization_losses
 
 
 
?
cnon_trainable_variables
dmetrics
0	variables
elayer_metrics

flayers
1regularization_losses
2trainable_variables
glayer_regularization_losses
\Z
VARIABLE_VALUEdense_138/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_138/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51
 

40
51
?
hnon_trainable_variables
imetrics
6	variables
jlayer_metrics

klayers
7regularization_losses
8trainable_variables
llayer_regularization_losses
\Z
VARIABLE_VALUEdense_139/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_139/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1
 

:0
;1
?
mnon_trainable_variables
nmetrics
<	variables
olayer_metrics

players
=regularization_losses
>trainable_variables
qlayer_regularization_losses
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

0
1
2

r0
 
?
0
1
2
3
4
5
6
7
	8
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
 
 
 
 
 
 
 
4
	stotal
	tcount
u	variables
v	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

s0
t1

u	variables
}
VARIABLE_VALUEAdam/dense_135/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_135/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_136/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_136/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_137/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_137/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_138/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_138/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_139/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_139/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_135/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_135/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_136/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_136/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_137/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_137/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_138/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_138/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_139/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_139/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
%serving_default_normalization_1_inputPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????
?
StatefulPartitionedCallStatefulPartitionedCall%serving_default_normalization_1_inputmeanvariancedense_135/kerneldense_135/biasdense_136/kerneldense_136/biasdense_137/kerneldense_137/biasdense_138/kerneldense_138/biasdense_139/kerneldense_139/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_703435
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOp$dense_135/kernel/Read/ReadVariableOp"dense_135/bias/Read/ReadVariableOp$dense_136/kernel/Read/ReadVariableOp"dense_136/bias/Read/ReadVariableOp$dense_137/kernel/Read/ReadVariableOp"dense_137/bias/Read/ReadVariableOp$dense_138/kernel/Read/ReadVariableOp"dense_138/bias/Read/ReadVariableOp$dense_139/kernel/Read/ReadVariableOp"dense_139/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_135/kernel/m/Read/ReadVariableOp)Adam/dense_135/bias/m/Read/ReadVariableOp+Adam/dense_136/kernel/m/Read/ReadVariableOp)Adam/dense_136/bias/m/Read/ReadVariableOp+Adam/dense_137/kernel/m/Read/ReadVariableOp)Adam/dense_137/bias/m/Read/ReadVariableOp+Adam/dense_138/kernel/m/Read/ReadVariableOp)Adam/dense_138/bias/m/Read/ReadVariableOp+Adam/dense_139/kernel/m/Read/ReadVariableOp)Adam/dense_139/bias/m/Read/ReadVariableOp+Adam/dense_135/kernel/v/Read/ReadVariableOp)Adam/dense_135/bias/v/Read/ReadVariableOp+Adam/dense_136/kernel/v/Read/ReadVariableOp)Adam/dense_136/bias/v/Read/ReadVariableOp+Adam/dense_137/kernel/v/Read/ReadVariableOp)Adam/dense_137/bias/v/Read/ReadVariableOp+Adam/dense_138/kernel/v/Read/ReadVariableOp)Adam/dense_138/bias/v/Read/ReadVariableOp+Adam/dense_139/kernel/v/Read/ReadVariableOp)Adam/dense_139/bias/v/Read/ReadVariableOpConst*5
Tin.
,2*		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_704085
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemeanvariancecountdense_135/kerneldense_135/biasdense_136/kerneldense_136/biasdense_137/kerneldense_137/biasdense_138/kerneldense_138/biasdense_139/kerneldense_139/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount_1Adam/dense_135/kernel/mAdam/dense_135/bias/mAdam/dense_136/kernel/mAdam/dense_136/bias/mAdam/dense_137/kernel/mAdam/dense_137/bias/mAdam/dense_138/kernel/mAdam/dense_138/bias/mAdam/dense_139/kernel/mAdam/dense_139/bias/mAdam/dense_135/kernel/vAdam/dense_135/bias/vAdam/dense_136/kernel/vAdam/dense_136/bias/vAdam/dense_137/kernel/vAdam/dense_137/bias/vAdam/dense_138/kernel/vAdam/dense_138/bias/vAdam/dense_139/kernel/vAdam/dense_139/bias/v*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_704215??
?
d
+__inference_dropout_82_layer_call_fn_703783

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_82_layer_call_and_return_conditional_losses_7029412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?

I__inference_sequential_27_layer_call_and_return_conditional_losses_703534

inputs3
/normalization_1_reshape_readvariableop_resource5
1normalization_1_reshape_1_readvariableop_resource,
(dense_135_matmul_readvariableop_resource-
)dense_135_biasadd_readvariableop_resource,
(dense_136_matmul_readvariableop_resource-
)dense_136_biasadd_readvariableop_resource,
(dense_137_matmul_readvariableop_resource-
)dense_137_biasadd_readvariableop_resource,
(dense_138_matmul_readvariableop_resource-
)dense_138_biasadd_readvariableop_resource,
(dense_139_matmul_readvariableop_resource-
)dense_139_biasadd_readvariableop_resource
identity?? dense_135/BiasAdd/ReadVariableOp?dense_135/MatMul/ReadVariableOp?2dense_135/kernel/Regularizer/Square/ReadVariableOp? dense_136/BiasAdd/ReadVariableOp?dense_136/MatMul/ReadVariableOp?2dense_136/kernel/Regularizer/Square/ReadVariableOp? dense_137/BiasAdd/ReadVariableOp?dense_137/MatMul/ReadVariableOp?2dense_137/kernel/Regularizer/Square/ReadVariableOp? dense_138/BiasAdd/ReadVariableOp?dense_138/MatMul/ReadVariableOp?2dense_138/kernel/Regularizer/Square/ReadVariableOp? dense_139/BiasAdd/ReadVariableOp?dense_139/MatMul/ReadVariableOp?&normalization_1/Reshape/ReadVariableOp?(normalization_1/Reshape_1/ReadVariableOp?
&normalization_1/Reshape/ReadVariableOpReadVariableOp/normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_1/Reshape/ReadVariableOp?
normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_1/Reshape/shape?
normalization_1/ReshapeReshape.normalization_1/Reshape/ReadVariableOp:value:0&normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape?
(normalization_1/Reshape_1/ReadVariableOpReadVariableOp1normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_1/Reshape_1/ReadVariableOp?
normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_1/Reshape_1/shape?
normalization_1/Reshape_1Reshape0normalization_1/Reshape_1/ReadVariableOp:value:0(normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape_1?
normalization_1/subSubinputs normalization_1/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_1/sub?
normalization_1/SqrtSqrt"normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_1/Sqrt{
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_1/Maximum/y?
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_1/Maximum?
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_1/truediv?
dense_135/MatMul/ReadVariableOpReadVariableOp(dense_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_135/MatMul/ReadVariableOp?
dense_135/MatMulMatMulnormalization_1/truediv:z:0'dense_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_135/MatMul?
 dense_135/BiasAdd/ReadVariableOpReadVariableOp)dense_135_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_135/BiasAdd/ReadVariableOp?
dense_135/BiasAddBiasAdddense_135/MatMul:product:0(dense_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_135/BiasAddw
dense_135/ReluReludense_135/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_135/Reluy
dropout_81/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_81/dropout/Const?
dropout_81/dropout/MulMuldense_135/Relu:activations:0!dropout_81/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_81/dropout/Mul?
dropout_81/dropout/ShapeShapedense_135/Relu:activations:0*
T0*
_output_shapes
:2
dropout_81/dropout/Shape?
/dropout_81/dropout/random_uniform/RandomUniformRandomUniform!dropout_81/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_81/dropout/random_uniform/RandomUniform?
!dropout_81/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_81/dropout/GreaterEqual/y?
dropout_81/dropout/GreaterEqualGreaterEqual8dropout_81/dropout/random_uniform/RandomUniform:output:0*dropout_81/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_81/dropout/GreaterEqual?
dropout_81/dropout/CastCast#dropout_81/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_81/dropout/Cast?
dropout_81/dropout/Mul_1Muldropout_81/dropout/Mul:z:0dropout_81/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_81/dropout/Mul_1?
dense_136/MatMul/ReadVariableOpReadVariableOp(dense_136_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_136/MatMul/ReadVariableOp?
dense_136/MatMulMatMuldropout_81/dropout/Mul_1:z:0'dense_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_136/MatMul?
 dense_136/BiasAdd/ReadVariableOpReadVariableOp)dense_136_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_136/BiasAdd/ReadVariableOp?
dense_136/BiasAddBiasAdddense_136/MatMul:product:0(dense_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_136/BiasAddw
dense_136/ReluReludense_136/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_136/Reluy
dropout_82/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_82/dropout/Const?
dropout_82/dropout/MulMuldense_136/Relu:activations:0!dropout_82/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_82/dropout/Mul?
dropout_82/dropout/ShapeShapedense_136/Relu:activations:0*
T0*
_output_shapes
:2
dropout_82/dropout/Shape?
/dropout_82/dropout/random_uniform/RandomUniformRandomUniform!dropout_82/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_82/dropout/random_uniform/RandomUniform?
!dropout_82/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_82/dropout/GreaterEqual/y?
dropout_82/dropout/GreaterEqualGreaterEqual8dropout_82/dropout/random_uniform/RandomUniform:output:0*dropout_82/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_82/dropout/GreaterEqual?
dropout_82/dropout/CastCast#dropout_82/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_82/dropout/Cast?
dropout_82/dropout/Mul_1Muldropout_82/dropout/Mul:z:0dropout_82/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_82/dropout/Mul_1?
dense_137/MatMul/ReadVariableOpReadVariableOp(dense_137_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_137/MatMul/ReadVariableOp?
dense_137/MatMulMatMuldropout_82/dropout/Mul_1:z:0'dense_137/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_137/MatMul?
 dense_137/BiasAdd/ReadVariableOpReadVariableOp)dense_137_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_137/BiasAdd/ReadVariableOp?
dense_137/BiasAddBiasAdddense_137/MatMul:product:0(dense_137/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_137/BiasAddw
dense_137/ReluReludense_137/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_137/Reluy
dropout_83/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_83/dropout/Const?
dropout_83/dropout/MulMuldense_137/Relu:activations:0!dropout_83/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_83/dropout/Mul?
dropout_83/dropout/ShapeShapedense_137/Relu:activations:0*
T0*
_output_shapes
:2
dropout_83/dropout/Shape?
/dropout_83/dropout/random_uniform/RandomUniformRandomUniform!dropout_83/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_83/dropout/random_uniform/RandomUniform?
!dropout_83/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_83/dropout/GreaterEqual/y?
dropout_83/dropout/GreaterEqualGreaterEqual8dropout_83/dropout/random_uniform/RandomUniform:output:0*dropout_83/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_83/dropout/GreaterEqual?
dropout_83/dropout/CastCast#dropout_83/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_83/dropout/Cast?
dropout_83/dropout/Mul_1Muldropout_83/dropout/Mul:z:0dropout_83/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_83/dropout/Mul_1?
dense_138/MatMul/ReadVariableOpReadVariableOp(dense_138_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_138/MatMul/ReadVariableOp?
dense_138/MatMulMatMuldropout_83/dropout/Mul_1:z:0'dense_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_138/MatMul?
 dense_138/BiasAdd/ReadVariableOpReadVariableOp)dense_138_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_138/BiasAdd/ReadVariableOp?
dense_138/BiasAddBiasAdddense_138/MatMul:product:0(dense_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_138/BiasAddw
dense_138/ReluReludense_138/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_138/Relu?
dense_139/MatMul/ReadVariableOpReadVariableOp(dense_139_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_139/MatMul/ReadVariableOp?
dense_139/MatMulMatMuldense_138/Relu:activations:0'dense_139/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_139/MatMul?
 dense_139/BiasAdd/ReadVariableOpReadVariableOp)dense_139_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_139/BiasAdd/ReadVariableOp?
dense_139/BiasAddBiasAdddense_139/MatMul:product:0(dense_139/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_139/BiasAdd?
2dense_135/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype024
2dense_135/kernel/Regularizer/Square/ReadVariableOp?
#dense_135/kernel/Regularizer/SquareSquare:dense_135/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2%
#dense_135/kernel/Regularizer/Square?
"dense_135/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_135/kernel/Regularizer/Const?
 dense_135/kernel/Regularizer/SumSum'dense_135/kernel/Regularizer/Square:y:0+dense_135/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/Sum?
"dense_135/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_135/kernel/Regularizer/mul/x?
 dense_135/kernel/Regularizer/mulMul+dense_135/kernel/Regularizer/mul/x:output:0)dense_135/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/mul?
2dense_136/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_136_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_136/kernel/Regularizer/Square/ReadVariableOp?
#dense_136/kernel/Regularizer/SquareSquare:dense_136/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_136/kernel/Regularizer/Square?
"dense_136/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_136/kernel/Regularizer/Const?
 dense_136/kernel/Regularizer/SumSum'dense_136/kernel/Regularizer/Square:y:0+dense_136/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/Sum?
"dense_136/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_136/kernel/Regularizer/mul/x?
 dense_136/kernel/Regularizer/mulMul+dense_136/kernel/Regularizer/mul/x:output:0)dense_136/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/mul?
2dense_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_137_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_137/kernel/Regularizer/Square/ReadVariableOp?
#dense_137/kernel/Regularizer/SquareSquare:dense_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_137/kernel/Regularizer/Square?
"dense_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_137/kernel/Regularizer/Const?
 dense_137/kernel/Regularizer/SumSum'dense_137/kernel/Regularizer/Square:y:0+dense_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/Sum?
"dense_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_137/kernel/Regularizer/mul/x?
 dense_137/kernel/Regularizer/mulMul+dense_137/kernel/Regularizer/mul/x:output:0)dense_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/mul?
2dense_138/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_138_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_138/kernel/Regularizer/Square/ReadVariableOp?
#dense_138/kernel/Regularizer/SquareSquare:dense_138/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_138/kernel/Regularizer/Square?
"dense_138/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_138/kernel/Regularizer/Const?
 dense_138/kernel/Regularizer/SumSum'dense_138/kernel/Regularizer/Square:y:0+dense_138/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/Sum?
"dense_138/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_138/kernel/Regularizer/mul/x?
 dense_138/kernel/Regularizer/mulMul+dense_138/kernel/Regularizer/mul/x:output:0)dense_138/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/mul?
IdentityIdentitydense_139/BiasAdd:output:0!^dense_135/BiasAdd/ReadVariableOp ^dense_135/MatMul/ReadVariableOp3^dense_135/kernel/Regularizer/Square/ReadVariableOp!^dense_136/BiasAdd/ReadVariableOp ^dense_136/MatMul/ReadVariableOp3^dense_136/kernel/Regularizer/Square/ReadVariableOp!^dense_137/BiasAdd/ReadVariableOp ^dense_137/MatMul/ReadVariableOp3^dense_137/kernel/Regularizer/Square/ReadVariableOp!^dense_138/BiasAdd/ReadVariableOp ^dense_138/MatMul/ReadVariableOp3^dense_138/kernel/Regularizer/Square/ReadVariableOp!^dense_139/BiasAdd/ReadVariableOp ^dense_139/MatMul/ReadVariableOp'^normalization_1/Reshape/ReadVariableOp)^normalization_1/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????????????::::::::::::2D
 dense_135/BiasAdd/ReadVariableOp dense_135/BiasAdd/ReadVariableOp2B
dense_135/MatMul/ReadVariableOpdense_135/MatMul/ReadVariableOp2h
2dense_135/kernel/Regularizer/Square/ReadVariableOp2dense_135/kernel/Regularizer/Square/ReadVariableOp2D
 dense_136/BiasAdd/ReadVariableOp dense_136/BiasAdd/ReadVariableOp2B
dense_136/MatMul/ReadVariableOpdense_136/MatMul/ReadVariableOp2h
2dense_136/kernel/Regularizer/Square/ReadVariableOp2dense_136/kernel/Regularizer/Square/ReadVariableOp2D
 dense_137/BiasAdd/ReadVariableOp dense_137/BiasAdd/ReadVariableOp2B
dense_137/MatMul/ReadVariableOpdense_137/MatMul/ReadVariableOp2h
2dense_137/kernel/Regularizer/Square/ReadVariableOp2dense_137/kernel/Regularizer/Square/ReadVariableOp2D
 dense_138/BiasAdd/ReadVariableOp dense_138/BiasAdd/ReadVariableOp2B
dense_138/MatMul/ReadVariableOpdense_138/MatMul/ReadVariableOp2h
2dense_138/kernel/Regularizer/Square/ReadVariableOp2dense_138/kernel/Regularizer/Square/ReadVariableOp2D
 dense_139/BiasAdd/ReadVariableOp dense_139/BiasAdd/ReadVariableOp2B
dense_139/MatMul/ReadVariableOpdense_139/MatMul/ReadVariableOp2P
&normalization_1/Reshape/ReadVariableOp&normalization_1/Reshape/ReadVariableOp2T
(normalization_1/Reshape_1/ReadVariableOp(normalization_1/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_703909?
;dense_135_kernel_regularizer_square_readvariableop_resource
identity??2dense_135/kernel/Regularizer/Square/ReadVariableOp?
2dense_135/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_135_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype024
2dense_135/kernel/Regularizer/Square/ReadVariableOp?
#dense_135/kernel/Regularizer/SquareSquare:dense_135/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2%
#dense_135/kernel/Regularizer/Square?
"dense_135/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_135/kernel/Regularizer/Const?
 dense_135/kernel/Regularizer/SumSum'dense_135/kernel/Regularizer/Square:y:0+dense_135/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/Sum?
"dense_135/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_135/kernel/Regularizer/mul/x?
 dense_135/kernel/Regularizer/mulMul+dense_135/kernel/Regularizer/mul/x:output:0)dense_135/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/mul?
IdentityIdentity$dense_135/kernel/Regularizer/mul:z:03^dense_135/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2dense_135/kernel/Regularizer/Square/ReadVariableOp2dense_135/kernel/Regularizer/Square/ReadVariableOp
?
e
F__inference_dropout_83_layer_call_and_return_conditional_losses_703832

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_138_layer_call_and_return_conditional_losses_703870

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_138/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
2dense_138/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_138/kernel/Regularizer/Square/ReadVariableOp?
#dense_138/kernel/Regularizer/SquareSquare:dense_138/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_138/kernel/Regularizer/Square?
"dense_138/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_138/kernel/Regularizer/Const?
 dense_138/kernel/Regularizer/SumSum'dense_138/kernel/Regularizer/Square:y:0+dense_138/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/Sum?
"dense_138/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_138/kernel/Regularizer/mul/x?
 dense_138/kernel/Regularizer/mulMul+dense_138/kernel/Regularizer/mul/x:output:0)dense_138/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_138/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_138/kernel/Regularizer/Square/ReadVariableOp2dense_138/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?T
?
__inference__traced_save_704085
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	/
+savev2_dense_135_kernel_read_readvariableop-
)savev2_dense_135_bias_read_readvariableop/
+savev2_dense_136_kernel_read_readvariableop-
)savev2_dense_136_bias_read_readvariableop/
+savev2_dense_137_kernel_read_readvariableop-
)savev2_dense_137_bias_read_readvariableop/
+savev2_dense_138_kernel_read_readvariableop-
)savev2_dense_138_bias_read_readvariableop/
+savev2_dense_139_kernel_read_readvariableop-
)savev2_dense_139_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_135_kernel_m_read_readvariableop4
0savev2_adam_dense_135_bias_m_read_readvariableop6
2savev2_adam_dense_136_kernel_m_read_readvariableop4
0savev2_adam_dense_136_bias_m_read_readvariableop6
2savev2_adam_dense_137_kernel_m_read_readvariableop4
0savev2_adam_dense_137_bias_m_read_readvariableop6
2savev2_adam_dense_138_kernel_m_read_readvariableop4
0savev2_adam_dense_138_bias_m_read_readvariableop6
2savev2_adam_dense_139_kernel_m_read_readvariableop4
0savev2_adam_dense_139_bias_m_read_readvariableop6
2savev2_adam_dense_135_kernel_v_read_readvariableop4
0savev2_adam_dense_135_bias_v_read_readvariableop6
2savev2_adam_dense_136_kernel_v_read_readvariableop4
0savev2_adam_dense_136_bias_v_read_readvariableop6
2savev2_adam_dense_137_kernel_v_read_readvariableop4
0savev2_adam_dense_137_bias_v_read_readvariableop6
2savev2_adam_dense_138_kernel_v_read_readvariableop4
0savev2_adam_dense_138_bias_v_read_readvariableop6
2savev2_adam_dense_139_kernel_v_read_readvariableop4
0savev2_adam_dense_139_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop+savev2_dense_135_kernel_read_readvariableop)savev2_dense_135_bias_read_readvariableop+savev2_dense_136_kernel_read_readvariableop)savev2_dense_136_bias_read_readvariableop+savev2_dense_137_kernel_read_readvariableop)savev2_dense_137_bias_read_readvariableop+savev2_dense_138_kernel_read_readvariableop)savev2_dense_138_bias_read_readvariableop+savev2_dense_139_kernel_read_readvariableop)savev2_dense_139_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_135_kernel_m_read_readvariableop0savev2_adam_dense_135_bias_m_read_readvariableop2savev2_adam_dense_136_kernel_m_read_readvariableop0savev2_adam_dense_136_bias_m_read_readvariableop2savev2_adam_dense_137_kernel_m_read_readvariableop0savev2_adam_dense_137_bias_m_read_readvariableop2savev2_adam_dense_138_kernel_m_read_readvariableop0savev2_adam_dense_138_bias_m_read_readvariableop2savev2_adam_dense_139_kernel_m_read_readvariableop0savev2_adam_dense_139_bias_m_read_readvariableop2savev2_adam_dense_135_kernel_v_read_readvariableop0savev2_adam_dense_135_bias_v_read_readvariableop2savev2_adam_dense_136_kernel_v_read_readvariableop0savev2_adam_dense_136_bias_v_read_readvariableop2savev2_adam_dense_137_kernel_v_read_readvariableop0savev2_adam_dense_137_bias_v_read_readvariableop2savev2_adam_dense_138_kernel_v_read_readvariableop0savev2_adam_dense_138_bias_v_read_readvariableop2savev2_adam_dense_139_kernel_v_read_readvariableop0savev2_adam_dense_139_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)		2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: ::: :	?:?:
??:?:
??:?:
??:?:	?:: : : : : : : :	?:?:
??:?:
??:?:
??:?:	?::	?:?:
??:?:
??:?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!	

_output_shapes	
:?:&
"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :
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
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	?:! 

_output_shapes	
:?:&!"
 
_output_shapes
:
??:!"

_output_shapes	
:?:&#"
 
_output_shapes
:
??:!$

_output_shapes	
:?:&%"
 
_output_shapes
:
??:!&

_output_shapes	
:?:%'!

_output_shapes
:	?: (

_output_shapes
::)

_output_shapes
: 
?

*__inference_dense_138_layer_call_fn_703879

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_138_layer_call_and_return_conditional_losses_7030392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_135_layer_call_and_return_conditional_losses_702850

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_135/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
2dense_135/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype024
2dense_135/kernel/Regularizer/Square/ReadVariableOp?
#dense_135/kernel/Regularizer/SquareSquare:dense_135/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2%
#dense_135/kernel/Regularizer/Square?
"dense_135/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_135/kernel/Regularizer/Const?
 dense_135/kernel/Regularizer/SumSum'dense_135/kernel/Regularizer/Square:y:0+dense_135/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/Sum?
"dense_135/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_135/kernel/Regularizer/mul/x?
 dense_135/kernel/Regularizer/mulMul+dense_135/kernel/Regularizer/mul/x:output:0)dense_135/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_135/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_135/kernel/Regularizer/Square/ReadVariableOp2dense_135/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_703435
normalization_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnormalization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_7028162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:??????????????????
/
_user_specified_namenormalization_1_input
?
d
+__inference_dropout_81_layer_call_fn_703724

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_81_layer_call_and_return_conditional_losses_7028782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_704215
file_prefix
assignvariableop_mean
assignvariableop_1_variance
assignvariableop_2_count'
#assignvariableop_3_dense_135_kernel%
!assignvariableop_4_dense_135_bias'
#assignvariableop_5_dense_136_kernel%
!assignvariableop_6_dense_136_bias'
#assignvariableop_7_dense_137_kernel%
!assignvariableop_8_dense_137_bias'
#assignvariableop_9_dense_138_kernel&
"assignvariableop_10_dense_138_bias(
$assignvariableop_11_dense_139_kernel&
"assignvariableop_12_dense_139_bias!
assignvariableop_13_adam_iter#
assignvariableop_14_adam_beta_1#
assignvariableop_15_adam_beta_2"
assignvariableop_16_adam_decay*
&assignvariableop_17_adam_learning_rate
assignvariableop_18_total
assignvariableop_19_count_1/
+assignvariableop_20_adam_dense_135_kernel_m-
)assignvariableop_21_adam_dense_135_bias_m/
+assignvariableop_22_adam_dense_136_kernel_m-
)assignvariableop_23_adam_dense_136_bias_m/
+assignvariableop_24_adam_dense_137_kernel_m-
)assignvariableop_25_adam_dense_137_bias_m/
+assignvariableop_26_adam_dense_138_kernel_m-
)assignvariableop_27_adam_dense_138_bias_m/
+assignvariableop_28_adam_dense_139_kernel_m-
)assignvariableop_29_adam_dense_139_bias_m/
+assignvariableop_30_adam_dense_135_kernel_v-
)assignvariableop_31_adam_dense_135_bias_v/
+assignvariableop_32_adam_dense_136_kernel_v-
)assignvariableop_33_adam_dense_136_bias_v/
+assignvariableop_34_adam_dense_137_kernel_v-
)assignvariableop_35_adam_dense_137_bias_v/
+assignvariableop_36_adam_dense_138_kernel_v-
)assignvariableop_37_adam_dense_138_bias_v/
+assignvariableop_38_adam_dense_139_kernel_v-
)assignvariableop_39_adam_dense_139_bias_v
identity_41??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_dense_135_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_135_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp#assignvariableop_5_dense_136_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_136_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp#assignvariableop_7_dense_137_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_137_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp#assignvariableop_9_dense_138_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_138_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp$assignvariableop_11_dense_139_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_139_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_iterIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_decayIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp&assignvariableop_17_adam_learning_rateIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_dense_135_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_135_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_dense_136_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_136_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_dense_137_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_137_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_dense_138_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_138_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_dense_139_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_139_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_dense_135_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_135_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_dense_136_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_136_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_dense_137_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_137_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_dense_138_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_138_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_dense_139_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_139_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_399
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_40?
Identity_41IdentityIdentity_40:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_41"#
identity_41Identity_41:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_4AssignVariableOp_42(
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
?
?
__inference_loss_fn_3_703942?
;dense_138_kernel_regularizer_square_readvariableop_resource
identity??2dense_138/kernel/Regularizer/Square/ReadVariableOp?
2dense_138/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_138_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_138/kernel/Regularizer/Square/ReadVariableOp?
#dense_138/kernel/Regularizer/SquareSquare:dense_138/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_138/kernel/Regularizer/Square?
"dense_138/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_138/kernel/Regularizer/Const?
 dense_138/kernel/Regularizer/SumSum'dense_138/kernel/Regularizer/Square:y:0+dense_138/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/Sum?
"dense_138/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_138/kernel/Regularizer/mul/x?
 dense_138/kernel/Regularizer/mulMul+dense_138/kernel/Regularizer/mul/x:output:0)dense_138/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/mul?
IdentityIdentity$dense_138/kernel/Regularizer/mul:z:03^dense_138/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2dense_138/kernel/Regularizer/Square/ReadVariableOp2dense_138/kernel/Regularizer/Square/ReadVariableOp
?n
?

I__inference_sequential_27_layer_call_and_return_conditional_losses_703612

inputs3
/normalization_1_reshape_readvariableop_resource5
1normalization_1_reshape_1_readvariableop_resource,
(dense_135_matmul_readvariableop_resource-
)dense_135_biasadd_readvariableop_resource,
(dense_136_matmul_readvariableop_resource-
)dense_136_biasadd_readvariableop_resource,
(dense_137_matmul_readvariableop_resource-
)dense_137_biasadd_readvariableop_resource,
(dense_138_matmul_readvariableop_resource-
)dense_138_biasadd_readvariableop_resource,
(dense_139_matmul_readvariableop_resource-
)dense_139_biasadd_readvariableop_resource
identity?? dense_135/BiasAdd/ReadVariableOp?dense_135/MatMul/ReadVariableOp?2dense_135/kernel/Regularizer/Square/ReadVariableOp? dense_136/BiasAdd/ReadVariableOp?dense_136/MatMul/ReadVariableOp?2dense_136/kernel/Regularizer/Square/ReadVariableOp? dense_137/BiasAdd/ReadVariableOp?dense_137/MatMul/ReadVariableOp?2dense_137/kernel/Regularizer/Square/ReadVariableOp? dense_138/BiasAdd/ReadVariableOp?dense_138/MatMul/ReadVariableOp?2dense_138/kernel/Regularizer/Square/ReadVariableOp? dense_139/BiasAdd/ReadVariableOp?dense_139/MatMul/ReadVariableOp?&normalization_1/Reshape/ReadVariableOp?(normalization_1/Reshape_1/ReadVariableOp?
&normalization_1/Reshape/ReadVariableOpReadVariableOp/normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_1/Reshape/ReadVariableOp?
normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_1/Reshape/shape?
normalization_1/ReshapeReshape.normalization_1/Reshape/ReadVariableOp:value:0&normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape?
(normalization_1/Reshape_1/ReadVariableOpReadVariableOp1normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_1/Reshape_1/ReadVariableOp?
normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_1/Reshape_1/shape?
normalization_1/Reshape_1Reshape0normalization_1/Reshape_1/ReadVariableOp:value:0(normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape_1?
normalization_1/subSubinputs normalization_1/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_1/sub?
normalization_1/SqrtSqrt"normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_1/Sqrt{
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_1/Maximum/y?
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_1/Maximum?
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_1/truediv?
dense_135/MatMul/ReadVariableOpReadVariableOp(dense_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_135/MatMul/ReadVariableOp?
dense_135/MatMulMatMulnormalization_1/truediv:z:0'dense_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_135/MatMul?
 dense_135/BiasAdd/ReadVariableOpReadVariableOp)dense_135_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_135/BiasAdd/ReadVariableOp?
dense_135/BiasAddBiasAdddense_135/MatMul:product:0(dense_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_135/BiasAddw
dense_135/ReluReludense_135/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_135/Relu?
dropout_81/IdentityIdentitydense_135/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_81/Identity?
dense_136/MatMul/ReadVariableOpReadVariableOp(dense_136_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_136/MatMul/ReadVariableOp?
dense_136/MatMulMatMuldropout_81/Identity:output:0'dense_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_136/MatMul?
 dense_136/BiasAdd/ReadVariableOpReadVariableOp)dense_136_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_136/BiasAdd/ReadVariableOp?
dense_136/BiasAddBiasAdddense_136/MatMul:product:0(dense_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_136/BiasAddw
dense_136/ReluReludense_136/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_136/Relu?
dropout_82/IdentityIdentitydense_136/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_82/Identity?
dense_137/MatMul/ReadVariableOpReadVariableOp(dense_137_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_137/MatMul/ReadVariableOp?
dense_137/MatMulMatMuldropout_82/Identity:output:0'dense_137/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_137/MatMul?
 dense_137/BiasAdd/ReadVariableOpReadVariableOp)dense_137_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_137/BiasAdd/ReadVariableOp?
dense_137/BiasAddBiasAdddense_137/MatMul:product:0(dense_137/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_137/BiasAddw
dense_137/ReluReludense_137/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_137/Relu?
dropout_83/IdentityIdentitydense_137/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_83/Identity?
dense_138/MatMul/ReadVariableOpReadVariableOp(dense_138_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_138/MatMul/ReadVariableOp?
dense_138/MatMulMatMuldropout_83/Identity:output:0'dense_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_138/MatMul?
 dense_138/BiasAdd/ReadVariableOpReadVariableOp)dense_138_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_138/BiasAdd/ReadVariableOp?
dense_138/BiasAddBiasAdddense_138/MatMul:product:0(dense_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_138/BiasAddw
dense_138/ReluReludense_138/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_138/Relu?
dense_139/MatMul/ReadVariableOpReadVariableOp(dense_139_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_139/MatMul/ReadVariableOp?
dense_139/MatMulMatMuldense_138/Relu:activations:0'dense_139/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_139/MatMul?
 dense_139/BiasAdd/ReadVariableOpReadVariableOp)dense_139_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_139/BiasAdd/ReadVariableOp?
dense_139/BiasAddBiasAdddense_139/MatMul:product:0(dense_139/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_139/BiasAdd?
2dense_135/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype024
2dense_135/kernel/Regularizer/Square/ReadVariableOp?
#dense_135/kernel/Regularizer/SquareSquare:dense_135/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2%
#dense_135/kernel/Regularizer/Square?
"dense_135/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_135/kernel/Regularizer/Const?
 dense_135/kernel/Regularizer/SumSum'dense_135/kernel/Regularizer/Square:y:0+dense_135/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/Sum?
"dense_135/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_135/kernel/Regularizer/mul/x?
 dense_135/kernel/Regularizer/mulMul+dense_135/kernel/Regularizer/mul/x:output:0)dense_135/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/mul?
2dense_136/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_136_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_136/kernel/Regularizer/Square/ReadVariableOp?
#dense_136/kernel/Regularizer/SquareSquare:dense_136/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_136/kernel/Regularizer/Square?
"dense_136/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_136/kernel/Regularizer/Const?
 dense_136/kernel/Regularizer/SumSum'dense_136/kernel/Regularizer/Square:y:0+dense_136/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/Sum?
"dense_136/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_136/kernel/Regularizer/mul/x?
 dense_136/kernel/Regularizer/mulMul+dense_136/kernel/Regularizer/mul/x:output:0)dense_136/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/mul?
2dense_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_137_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_137/kernel/Regularizer/Square/ReadVariableOp?
#dense_137/kernel/Regularizer/SquareSquare:dense_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_137/kernel/Regularizer/Square?
"dense_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_137/kernel/Regularizer/Const?
 dense_137/kernel/Regularizer/SumSum'dense_137/kernel/Regularizer/Square:y:0+dense_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/Sum?
"dense_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_137/kernel/Regularizer/mul/x?
 dense_137/kernel/Regularizer/mulMul+dense_137/kernel/Regularizer/mul/x:output:0)dense_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/mul?
2dense_138/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_138_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_138/kernel/Regularizer/Square/ReadVariableOp?
#dense_138/kernel/Regularizer/SquareSquare:dense_138/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_138/kernel/Regularizer/Square?
"dense_138/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_138/kernel/Regularizer/Const?
 dense_138/kernel/Regularizer/SumSum'dense_138/kernel/Regularizer/Square:y:0+dense_138/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/Sum?
"dense_138/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_138/kernel/Regularizer/mul/x?
 dense_138/kernel/Regularizer/mulMul+dense_138/kernel/Regularizer/mul/x:output:0)dense_138/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/mul?
IdentityIdentitydense_139/BiasAdd:output:0!^dense_135/BiasAdd/ReadVariableOp ^dense_135/MatMul/ReadVariableOp3^dense_135/kernel/Regularizer/Square/ReadVariableOp!^dense_136/BiasAdd/ReadVariableOp ^dense_136/MatMul/ReadVariableOp3^dense_136/kernel/Regularizer/Square/ReadVariableOp!^dense_137/BiasAdd/ReadVariableOp ^dense_137/MatMul/ReadVariableOp3^dense_137/kernel/Regularizer/Square/ReadVariableOp!^dense_138/BiasAdd/ReadVariableOp ^dense_138/MatMul/ReadVariableOp3^dense_138/kernel/Regularizer/Square/ReadVariableOp!^dense_139/BiasAdd/ReadVariableOp ^dense_139/MatMul/ReadVariableOp'^normalization_1/Reshape/ReadVariableOp)^normalization_1/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????????????::::::::::::2D
 dense_135/BiasAdd/ReadVariableOp dense_135/BiasAdd/ReadVariableOp2B
dense_135/MatMul/ReadVariableOpdense_135/MatMul/ReadVariableOp2h
2dense_135/kernel/Regularizer/Square/ReadVariableOp2dense_135/kernel/Regularizer/Square/ReadVariableOp2D
 dense_136/BiasAdd/ReadVariableOp dense_136/BiasAdd/ReadVariableOp2B
dense_136/MatMul/ReadVariableOpdense_136/MatMul/ReadVariableOp2h
2dense_136/kernel/Regularizer/Square/ReadVariableOp2dense_136/kernel/Regularizer/Square/ReadVariableOp2D
 dense_137/BiasAdd/ReadVariableOp dense_137/BiasAdd/ReadVariableOp2B
dense_137/MatMul/ReadVariableOpdense_137/MatMul/ReadVariableOp2h
2dense_137/kernel/Regularizer/Square/ReadVariableOp2dense_137/kernel/Regularizer/Square/ReadVariableOp2D
 dense_138/BiasAdd/ReadVariableOp dense_138/BiasAdd/ReadVariableOp2B
dense_138/MatMul/ReadVariableOpdense_138/MatMul/ReadVariableOp2h
2dense_138/kernel/Regularizer/Square/ReadVariableOp2dense_138/kernel/Regularizer/Square/ReadVariableOp2D
 dense_139/BiasAdd/ReadVariableOp dense_139/BiasAdd/ReadVariableOp2B
dense_139/MatMul/ReadVariableOpdense_139/MatMul/ReadVariableOp2P
&normalization_1/Reshape/ReadVariableOp&normalization_1/Reshape/ReadVariableOp2T
(normalization_1/Reshape_1/ReadVariableOp(normalization_1/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_81_layer_call_fn_703729

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_81_layer_call_and_return_conditional_losses_7028832
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_82_layer_call_and_return_conditional_losses_702946

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_82_layer_call_fn_703788

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_82_layer_call_and_return_conditional_losses_7029462
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_27_layer_call_fn_703670

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_7033452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_81_layer_call_and_return_conditional_losses_702883

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_82_layer_call_and_return_conditional_losses_703773

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_27_layer_call_fn_703372
normalization_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnormalization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_7033452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:??????????????????
/
_user_specified_namenormalization_1_input
?Y
?
!__inference__wrapped_model_702816
normalization_1_inputA
=sequential_27_normalization_1_reshape_readvariableop_resourceC
?sequential_27_normalization_1_reshape_1_readvariableop_resource:
6sequential_27_dense_135_matmul_readvariableop_resource;
7sequential_27_dense_135_biasadd_readvariableop_resource:
6sequential_27_dense_136_matmul_readvariableop_resource;
7sequential_27_dense_136_biasadd_readvariableop_resource:
6sequential_27_dense_137_matmul_readvariableop_resource;
7sequential_27_dense_137_biasadd_readvariableop_resource:
6sequential_27_dense_138_matmul_readvariableop_resource;
7sequential_27_dense_138_biasadd_readvariableop_resource:
6sequential_27_dense_139_matmul_readvariableop_resource;
7sequential_27_dense_139_biasadd_readvariableop_resource
identity??.sequential_27/dense_135/BiasAdd/ReadVariableOp?-sequential_27/dense_135/MatMul/ReadVariableOp?.sequential_27/dense_136/BiasAdd/ReadVariableOp?-sequential_27/dense_136/MatMul/ReadVariableOp?.sequential_27/dense_137/BiasAdd/ReadVariableOp?-sequential_27/dense_137/MatMul/ReadVariableOp?.sequential_27/dense_138/BiasAdd/ReadVariableOp?-sequential_27/dense_138/MatMul/ReadVariableOp?.sequential_27/dense_139/BiasAdd/ReadVariableOp?-sequential_27/dense_139/MatMul/ReadVariableOp?4sequential_27/normalization_1/Reshape/ReadVariableOp?6sequential_27/normalization_1/Reshape_1/ReadVariableOp?
4sequential_27/normalization_1/Reshape/ReadVariableOpReadVariableOp=sequential_27_normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype026
4sequential_27/normalization_1/Reshape/ReadVariableOp?
+sequential_27/normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2-
+sequential_27/normalization_1/Reshape/shape?
%sequential_27/normalization_1/ReshapeReshape<sequential_27/normalization_1/Reshape/ReadVariableOp:value:04sequential_27/normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2'
%sequential_27/normalization_1/Reshape?
6sequential_27/normalization_1/Reshape_1/ReadVariableOpReadVariableOp?sequential_27_normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_27/normalization_1/Reshape_1/ReadVariableOp?
-sequential_27/normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2/
-sequential_27/normalization_1/Reshape_1/shape?
'sequential_27/normalization_1/Reshape_1Reshape>sequential_27/normalization_1/Reshape_1/ReadVariableOp:value:06sequential_27/normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2)
'sequential_27/normalization_1/Reshape_1?
!sequential_27/normalization_1/subSubnormalization_1_input.sequential_27/normalization_1/Reshape:output:0*
T0*'
_output_shapes
:?????????2#
!sequential_27/normalization_1/sub?
"sequential_27/normalization_1/SqrtSqrt0sequential_27/normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2$
"sequential_27/normalization_1/Sqrt?
'sequential_27/normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32)
'sequential_27/normalization_1/Maximum/y?
%sequential_27/normalization_1/MaximumMaximum&sequential_27/normalization_1/Sqrt:y:00sequential_27/normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2'
%sequential_27/normalization_1/Maximum?
%sequential_27/normalization_1/truedivRealDiv%sequential_27/normalization_1/sub:z:0)sequential_27/normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????2'
%sequential_27/normalization_1/truediv?
-sequential_27/dense_135/MatMul/ReadVariableOpReadVariableOp6sequential_27_dense_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02/
-sequential_27/dense_135/MatMul/ReadVariableOp?
sequential_27/dense_135/MatMulMatMul)sequential_27/normalization_1/truediv:z:05sequential_27/dense_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_27/dense_135/MatMul?
.sequential_27/dense_135/BiasAdd/ReadVariableOpReadVariableOp7sequential_27_dense_135_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_27/dense_135/BiasAdd/ReadVariableOp?
sequential_27/dense_135/BiasAddBiasAdd(sequential_27/dense_135/MatMul:product:06sequential_27/dense_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_27/dense_135/BiasAdd?
sequential_27/dense_135/ReluRelu(sequential_27/dense_135/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_27/dense_135/Relu?
!sequential_27/dropout_81/IdentityIdentity*sequential_27/dense_135/Relu:activations:0*
T0*(
_output_shapes
:??????????2#
!sequential_27/dropout_81/Identity?
-sequential_27/dense_136/MatMul/ReadVariableOpReadVariableOp6sequential_27_dense_136_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_27/dense_136/MatMul/ReadVariableOp?
sequential_27/dense_136/MatMulMatMul*sequential_27/dropout_81/Identity:output:05sequential_27/dense_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_27/dense_136/MatMul?
.sequential_27/dense_136/BiasAdd/ReadVariableOpReadVariableOp7sequential_27_dense_136_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_27/dense_136/BiasAdd/ReadVariableOp?
sequential_27/dense_136/BiasAddBiasAdd(sequential_27/dense_136/MatMul:product:06sequential_27/dense_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_27/dense_136/BiasAdd?
sequential_27/dense_136/ReluRelu(sequential_27/dense_136/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_27/dense_136/Relu?
!sequential_27/dropout_82/IdentityIdentity*sequential_27/dense_136/Relu:activations:0*
T0*(
_output_shapes
:??????????2#
!sequential_27/dropout_82/Identity?
-sequential_27/dense_137/MatMul/ReadVariableOpReadVariableOp6sequential_27_dense_137_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_27/dense_137/MatMul/ReadVariableOp?
sequential_27/dense_137/MatMulMatMul*sequential_27/dropout_82/Identity:output:05sequential_27/dense_137/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_27/dense_137/MatMul?
.sequential_27/dense_137/BiasAdd/ReadVariableOpReadVariableOp7sequential_27_dense_137_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_27/dense_137/BiasAdd/ReadVariableOp?
sequential_27/dense_137/BiasAddBiasAdd(sequential_27/dense_137/MatMul:product:06sequential_27/dense_137/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_27/dense_137/BiasAdd?
sequential_27/dense_137/ReluRelu(sequential_27/dense_137/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_27/dense_137/Relu?
!sequential_27/dropout_83/IdentityIdentity*sequential_27/dense_137/Relu:activations:0*
T0*(
_output_shapes
:??????????2#
!sequential_27/dropout_83/Identity?
-sequential_27/dense_138/MatMul/ReadVariableOpReadVariableOp6sequential_27_dense_138_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_27/dense_138/MatMul/ReadVariableOp?
sequential_27/dense_138/MatMulMatMul*sequential_27/dropout_83/Identity:output:05sequential_27/dense_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_27/dense_138/MatMul?
.sequential_27/dense_138/BiasAdd/ReadVariableOpReadVariableOp7sequential_27_dense_138_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_27/dense_138/BiasAdd/ReadVariableOp?
sequential_27/dense_138/BiasAddBiasAdd(sequential_27/dense_138/MatMul:product:06sequential_27/dense_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_27/dense_138/BiasAdd?
sequential_27/dense_138/ReluRelu(sequential_27/dense_138/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_27/dense_138/Relu?
-sequential_27/dense_139/MatMul/ReadVariableOpReadVariableOp6sequential_27_dense_139_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02/
-sequential_27/dense_139/MatMul/ReadVariableOp?
sequential_27/dense_139/MatMulMatMul*sequential_27/dense_138/Relu:activations:05sequential_27/dense_139/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_27/dense_139/MatMul?
.sequential_27/dense_139/BiasAdd/ReadVariableOpReadVariableOp7sequential_27_dense_139_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_27/dense_139/BiasAdd/ReadVariableOp?
sequential_27/dense_139/BiasAddBiasAdd(sequential_27/dense_139/MatMul:product:06sequential_27/dense_139/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_27/dense_139/BiasAdd?
IdentityIdentity(sequential_27/dense_139/BiasAdd:output:0/^sequential_27/dense_135/BiasAdd/ReadVariableOp.^sequential_27/dense_135/MatMul/ReadVariableOp/^sequential_27/dense_136/BiasAdd/ReadVariableOp.^sequential_27/dense_136/MatMul/ReadVariableOp/^sequential_27/dense_137/BiasAdd/ReadVariableOp.^sequential_27/dense_137/MatMul/ReadVariableOp/^sequential_27/dense_138/BiasAdd/ReadVariableOp.^sequential_27/dense_138/MatMul/ReadVariableOp/^sequential_27/dense_139/BiasAdd/ReadVariableOp.^sequential_27/dense_139/MatMul/ReadVariableOp5^sequential_27/normalization_1/Reshape/ReadVariableOp7^sequential_27/normalization_1/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????????????::::::::::::2`
.sequential_27/dense_135/BiasAdd/ReadVariableOp.sequential_27/dense_135/BiasAdd/ReadVariableOp2^
-sequential_27/dense_135/MatMul/ReadVariableOp-sequential_27/dense_135/MatMul/ReadVariableOp2`
.sequential_27/dense_136/BiasAdd/ReadVariableOp.sequential_27/dense_136/BiasAdd/ReadVariableOp2^
-sequential_27/dense_136/MatMul/ReadVariableOp-sequential_27/dense_136/MatMul/ReadVariableOp2`
.sequential_27/dense_137/BiasAdd/ReadVariableOp.sequential_27/dense_137/BiasAdd/ReadVariableOp2^
-sequential_27/dense_137/MatMul/ReadVariableOp-sequential_27/dense_137/MatMul/ReadVariableOp2`
.sequential_27/dense_138/BiasAdd/ReadVariableOp.sequential_27/dense_138/BiasAdd/ReadVariableOp2^
-sequential_27/dense_138/MatMul/ReadVariableOp-sequential_27/dense_138/MatMul/ReadVariableOp2`
.sequential_27/dense_139/BiasAdd/ReadVariableOp.sequential_27/dense_139/BiasAdd/ReadVariableOp2^
-sequential_27/dense_139/MatMul/ReadVariableOp-sequential_27/dense_139/MatMul/ReadVariableOp2l
4sequential_27/normalization_1/Reshape/ReadVariableOp4sequential_27/normalization_1/Reshape/ReadVariableOp2p
6sequential_27/normalization_1/Reshape_1/ReadVariableOp6sequential_27/normalization_1/Reshape_1/ReadVariableOp:g c
0
_output_shapes
:??????????????????
/
_user_specified_namenormalization_1_input
?	
?
E__inference_dense_139_layer_call_and_return_conditional_losses_703065

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_81_layer_call_and_return_conditional_losses_702878

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_136_layer_call_and_return_conditional_losses_702913

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_136/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
2dense_136/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_136/kernel/Regularizer/Square/ReadVariableOp?
#dense_136/kernel/Regularizer/SquareSquare:dense_136/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_136/kernel/Regularizer/Square?
"dense_136/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_136/kernel/Regularizer/Const?
 dense_136/kernel/Regularizer/SumSum'dense_136/kernel/Regularizer/Square:y:0+dense_136/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/Sum?
"dense_136/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_136/kernel/Regularizer/mul/x?
 dense_136/kernel/Regularizer/mulMul+dense_136/kernel/Regularizer/mul/x:output:0)dense_136/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_136/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_136/kernel/Regularizer/Square/ReadVariableOp2dense_136/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?_
?
I__inference_sequential_27_layer_call_and_return_conditional_losses_703175
normalization_1_input3
/normalization_1_reshape_readvariableop_resource5
1normalization_1_reshape_1_readvariableop_resource
dense_135_703122
dense_135_703124
dense_136_703128
dense_136_703130
dense_137_703134
dense_137_703136
dense_138_703140
dense_138_703142
dense_139_703145
dense_139_703147
identity??!dense_135/StatefulPartitionedCall?2dense_135/kernel/Regularizer/Square/ReadVariableOp?!dense_136/StatefulPartitionedCall?2dense_136/kernel/Regularizer/Square/ReadVariableOp?!dense_137/StatefulPartitionedCall?2dense_137/kernel/Regularizer/Square/ReadVariableOp?!dense_138/StatefulPartitionedCall?2dense_138/kernel/Regularizer/Square/ReadVariableOp?!dense_139/StatefulPartitionedCall?&normalization_1/Reshape/ReadVariableOp?(normalization_1/Reshape_1/ReadVariableOp?
&normalization_1/Reshape/ReadVariableOpReadVariableOp/normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_1/Reshape/ReadVariableOp?
normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_1/Reshape/shape?
normalization_1/ReshapeReshape.normalization_1/Reshape/ReadVariableOp:value:0&normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape?
(normalization_1/Reshape_1/ReadVariableOpReadVariableOp1normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_1/Reshape_1/ReadVariableOp?
normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_1/Reshape_1/shape?
normalization_1/Reshape_1Reshape0normalization_1/Reshape_1/ReadVariableOp:value:0(normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape_1?
normalization_1/subSubnormalization_1_input normalization_1/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_1/sub?
normalization_1/SqrtSqrt"normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_1/Sqrt{
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_1/Maximum/y?
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_1/Maximum?
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_1/truediv?
!dense_135/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0dense_135_703122dense_135_703124*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_135_layer_call_and_return_conditional_losses_7028502#
!dense_135/StatefulPartitionedCall?
dropout_81/PartitionedCallPartitionedCall*dense_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_81_layer_call_and_return_conditional_losses_7028832
dropout_81/PartitionedCall?
!dense_136/StatefulPartitionedCallStatefulPartitionedCall#dropout_81/PartitionedCall:output:0dense_136_703128dense_136_703130*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_136_layer_call_and_return_conditional_losses_7029132#
!dense_136/StatefulPartitionedCall?
dropout_82/PartitionedCallPartitionedCall*dense_136/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_82_layer_call_and_return_conditional_losses_7029462
dropout_82/PartitionedCall?
!dense_137/StatefulPartitionedCallStatefulPartitionedCall#dropout_82/PartitionedCall:output:0dense_137_703134dense_137_703136*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_137_layer_call_and_return_conditional_losses_7029762#
!dense_137/StatefulPartitionedCall?
dropout_83/PartitionedCallPartitionedCall*dense_137/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_83_layer_call_and_return_conditional_losses_7030092
dropout_83/PartitionedCall?
!dense_138/StatefulPartitionedCallStatefulPartitionedCall#dropout_83/PartitionedCall:output:0dense_138_703140dense_138_703142*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_138_layer_call_and_return_conditional_losses_7030392#
!dense_138/StatefulPartitionedCall?
!dense_139/StatefulPartitionedCallStatefulPartitionedCall*dense_138/StatefulPartitionedCall:output:0dense_139_703145dense_139_703147*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_139_layer_call_and_return_conditional_losses_7030652#
!dense_139/StatefulPartitionedCall?
2dense_135/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_135_703122*
_output_shapes
:	?*
dtype024
2dense_135/kernel/Regularizer/Square/ReadVariableOp?
#dense_135/kernel/Regularizer/SquareSquare:dense_135/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2%
#dense_135/kernel/Regularizer/Square?
"dense_135/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_135/kernel/Regularizer/Const?
 dense_135/kernel/Regularizer/SumSum'dense_135/kernel/Regularizer/Square:y:0+dense_135/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/Sum?
"dense_135/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_135/kernel/Regularizer/mul/x?
 dense_135/kernel/Regularizer/mulMul+dense_135/kernel/Regularizer/mul/x:output:0)dense_135/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/mul?
2dense_136/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_136_703128* 
_output_shapes
:
??*
dtype024
2dense_136/kernel/Regularizer/Square/ReadVariableOp?
#dense_136/kernel/Regularizer/SquareSquare:dense_136/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_136/kernel/Regularizer/Square?
"dense_136/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_136/kernel/Regularizer/Const?
 dense_136/kernel/Regularizer/SumSum'dense_136/kernel/Regularizer/Square:y:0+dense_136/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/Sum?
"dense_136/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_136/kernel/Regularizer/mul/x?
 dense_136/kernel/Regularizer/mulMul+dense_136/kernel/Regularizer/mul/x:output:0)dense_136/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/mul?
2dense_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_137_703134* 
_output_shapes
:
??*
dtype024
2dense_137/kernel/Regularizer/Square/ReadVariableOp?
#dense_137/kernel/Regularizer/SquareSquare:dense_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_137/kernel/Regularizer/Square?
"dense_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_137/kernel/Regularizer/Const?
 dense_137/kernel/Regularizer/SumSum'dense_137/kernel/Regularizer/Square:y:0+dense_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/Sum?
"dense_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_137/kernel/Regularizer/mul/x?
 dense_137/kernel/Regularizer/mulMul+dense_137/kernel/Regularizer/mul/x:output:0)dense_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/mul?
2dense_138/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_138_703140* 
_output_shapes
:
??*
dtype024
2dense_138/kernel/Regularizer/Square/ReadVariableOp?
#dense_138/kernel/Regularizer/SquareSquare:dense_138/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_138/kernel/Regularizer/Square?
"dense_138/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_138/kernel/Regularizer/Const?
 dense_138/kernel/Regularizer/SumSum'dense_138/kernel/Regularizer/Square:y:0+dense_138/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/Sum?
"dense_138/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_138/kernel/Regularizer/mul/x?
 dense_138/kernel/Regularizer/mulMul+dense_138/kernel/Regularizer/mul/x:output:0)dense_138/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/mul?
IdentityIdentity*dense_139/StatefulPartitionedCall:output:0"^dense_135/StatefulPartitionedCall3^dense_135/kernel/Regularizer/Square/ReadVariableOp"^dense_136/StatefulPartitionedCall3^dense_136/kernel/Regularizer/Square/ReadVariableOp"^dense_137/StatefulPartitionedCall3^dense_137/kernel/Regularizer/Square/ReadVariableOp"^dense_138/StatefulPartitionedCall3^dense_138/kernel/Regularizer/Square/ReadVariableOp"^dense_139/StatefulPartitionedCall'^normalization_1/Reshape/ReadVariableOp)^normalization_1/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????????????::::::::::::2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2h
2dense_135/kernel/Regularizer/Square/ReadVariableOp2dense_135/kernel/Regularizer/Square/ReadVariableOp2F
!dense_136/StatefulPartitionedCall!dense_136/StatefulPartitionedCall2h
2dense_136/kernel/Regularizer/Square/ReadVariableOp2dense_136/kernel/Regularizer/Square/ReadVariableOp2F
!dense_137/StatefulPartitionedCall!dense_137/StatefulPartitionedCall2h
2dense_137/kernel/Regularizer/Square/ReadVariableOp2dense_137/kernel/Regularizer/Square/ReadVariableOp2F
!dense_138/StatefulPartitionedCall!dense_138/StatefulPartitionedCall2h
2dense_138/kernel/Regularizer/Square/ReadVariableOp2dense_138/kernel/Regularizer/Square/ReadVariableOp2F
!dense_139/StatefulPartitionedCall!dense_139/StatefulPartitionedCall2P
&normalization_1/Reshape/ReadVariableOp&normalization_1/Reshape/ReadVariableOp2T
(normalization_1/Reshape_1/ReadVariableOp(normalization_1/Reshape_1/ReadVariableOp:g c
0
_output_shapes
:??????????????????
/
_user_specified_namenormalization_1_input
?
?
E__inference_dense_137_layer_call_and_return_conditional_losses_702976

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_137/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
2dense_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_137/kernel/Regularizer/Square/ReadVariableOp?
#dense_137/kernel/Regularizer/SquareSquare:dense_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_137/kernel/Regularizer/Square?
"dense_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_137/kernel/Regularizer/Const?
 dense_137/kernel/Regularizer/SumSum'dense_137/kernel/Regularizer/Square:y:0+dense_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/Sum?
"dense_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_137/kernel/Regularizer/mul/x?
 dense_137/kernel/Regularizer/mulMul+dense_137/kernel/Regularizer/mul/x:output:0)dense_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_137/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_137/kernel/Regularizer/Square/ReadVariableOp2dense_137/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?c
?
I__inference_sequential_27_layer_call_and_return_conditional_losses_703247

inputs3
/normalization_1_reshape_readvariableop_resource5
1normalization_1_reshape_1_readvariableop_resource
dense_135_703194
dense_135_703196
dense_136_703200
dense_136_703202
dense_137_703206
dense_137_703208
dense_138_703212
dense_138_703214
dense_139_703217
dense_139_703219
identity??!dense_135/StatefulPartitionedCall?2dense_135/kernel/Regularizer/Square/ReadVariableOp?!dense_136/StatefulPartitionedCall?2dense_136/kernel/Regularizer/Square/ReadVariableOp?!dense_137/StatefulPartitionedCall?2dense_137/kernel/Regularizer/Square/ReadVariableOp?!dense_138/StatefulPartitionedCall?2dense_138/kernel/Regularizer/Square/ReadVariableOp?!dense_139/StatefulPartitionedCall?"dropout_81/StatefulPartitionedCall?"dropout_82/StatefulPartitionedCall?"dropout_83/StatefulPartitionedCall?&normalization_1/Reshape/ReadVariableOp?(normalization_1/Reshape_1/ReadVariableOp?
&normalization_1/Reshape/ReadVariableOpReadVariableOp/normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_1/Reshape/ReadVariableOp?
normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_1/Reshape/shape?
normalization_1/ReshapeReshape.normalization_1/Reshape/ReadVariableOp:value:0&normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape?
(normalization_1/Reshape_1/ReadVariableOpReadVariableOp1normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_1/Reshape_1/ReadVariableOp?
normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_1/Reshape_1/shape?
normalization_1/Reshape_1Reshape0normalization_1/Reshape_1/ReadVariableOp:value:0(normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape_1?
normalization_1/subSubinputs normalization_1/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_1/sub?
normalization_1/SqrtSqrt"normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_1/Sqrt{
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_1/Maximum/y?
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_1/Maximum?
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_1/truediv?
!dense_135/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0dense_135_703194dense_135_703196*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_135_layer_call_and_return_conditional_losses_7028502#
!dense_135/StatefulPartitionedCall?
"dropout_81/StatefulPartitionedCallStatefulPartitionedCall*dense_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_81_layer_call_and_return_conditional_losses_7028782$
"dropout_81/StatefulPartitionedCall?
!dense_136/StatefulPartitionedCallStatefulPartitionedCall+dropout_81/StatefulPartitionedCall:output:0dense_136_703200dense_136_703202*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_136_layer_call_and_return_conditional_losses_7029132#
!dense_136/StatefulPartitionedCall?
"dropout_82/StatefulPartitionedCallStatefulPartitionedCall*dense_136/StatefulPartitionedCall:output:0#^dropout_81/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_82_layer_call_and_return_conditional_losses_7029412$
"dropout_82/StatefulPartitionedCall?
!dense_137/StatefulPartitionedCallStatefulPartitionedCall+dropout_82/StatefulPartitionedCall:output:0dense_137_703206dense_137_703208*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_137_layer_call_and_return_conditional_losses_7029762#
!dense_137/StatefulPartitionedCall?
"dropout_83/StatefulPartitionedCallStatefulPartitionedCall*dense_137/StatefulPartitionedCall:output:0#^dropout_82/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_83_layer_call_and_return_conditional_losses_7030042$
"dropout_83/StatefulPartitionedCall?
!dense_138/StatefulPartitionedCallStatefulPartitionedCall+dropout_83/StatefulPartitionedCall:output:0dense_138_703212dense_138_703214*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_138_layer_call_and_return_conditional_losses_7030392#
!dense_138/StatefulPartitionedCall?
!dense_139/StatefulPartitionedCallStatefulPartitionedCall*dense_138/StatefulPartitionedCall:output:0dense_139_703217dense_139_703219*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_139_layer_call_and_return_conditional_losses_7030652#
!dense_139/StatefulPartitionedCall?
2dense_135/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_135_703194*
_output_shapes
:	?*
dtype024
2dense_135/kernel/Regularizer/Square/ReadVariableOp?
#dense_135/kernel/Regularizer/SquareSquare:dense_135/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2%
#dense_135/kernel/Regularizer/Square?
"dense_135/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_135/kernel/Regularizer/Const?
 dense_135/kernel/Regularizer/SumSum'dense_135/kernel/Regularizer/Square:y:0+dense_135/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/Sum?
"dense_135/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_135/kernel/Regularizer/mul/x?
 dense_135/kernel/Regularizer/mulMul+dense_135/kernel/Regularizer/mul/x:output:0)dense_135/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/mul?
2dense_136/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_136_703200* 
_output_shapes
:
??*
dtype024
2dense_136/kernel/Regularizer/Square/ReadVariableOp?
#dense_136/kernel/Regularizer/SquareSquare:dense_136/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_136/kernel/Regularizer/Square?
"dense_136/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_136/kernel/Regularizer/Const?
 dense_136/kernel/Regularizer/SumSum'dense_136/kernel/Regularizer/Square:y:0+dense_136/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/Sum?
"dense_136/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_136/kernel/Regularizer/mul/x?
 dense_136/kernel/Regularizer/mulMul+dense_136/kernel/Regularizer/mul/x:output:0)dense_136/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/mul?
2dense_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_137_703206* 
_output_shapes
:
??*
dtype024
2dense_137/kernel/Regularizer/Square/ReadVariableOp?
#dense_137/kernel/Regularizer/SquareSquare:dense_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_137/kernel/Regularizer/Square?
"dense_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_137/kernel/Regularizer/Const?
 dense_137/kernel/Regularizer/SumSum'dense_137/kernel/Regularizer/Square:y:0+dense_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/Sum?
"dense_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_137/kernel/Regularizer/mul/x?
 dense_137/kernel/Regularizer/mulMul+dense_137/kernel/Regularizer/mul/x:output:0)dense_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/mul?
2dense_138/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_138_703212* 
_output_shapes
:
??*
dtype024
2dense_138/kernel/Regularizer/Square/ReadVariableOp?
#dense_138/kernel/Regularizer/SquareSquare:dense_138/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_138/kernel/Regularizer/Square?
"dense_138/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_138/kernel/Regularizer/Const?
 dense_138/kernel/Regularizer/SumSum'dense_138/kernel/Regularizer/Square:y:0+dense_138/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/Sum?
"dense_138/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_138/kernel/Regularizer/mul/x?
 dense_138/kernel/Regularizer/mulMul+dense_138/kernel/Regularizer/mul/x:output:0)dense_138/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/mul?
IdentityIdentity*dense_139/StatefulPartitionedCall:output:0"^dense_135/StatefulPartitionedCall3^dense_135/kernel/Regularizer/Square/ReadVariableOp"^dense_136/StatefulPartitionedCall3^dense_136/kernel/Regularizer/Square/ReadVariableOp"^dense_137/StatefulPartitionedCall3^dense_137/kernel/Regularizer/Square/ReadVariableOp"^dense_138/StatefulPartitionedCall3^dense_138/kernel/Regularizer/Square/ReadVariableOp"^dense_139/StatefulPartitionedCall#^dropout_81/StatefulPartitionedCall#^dropout_82/StatefulPartitionedCall#^dropout_83/StatefulPartitionedCall'^normalization_1/Reshape/ReadVariableOp)^normalization_1/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????????????::::::::::::2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2h
2dense_135/kernel/Regularizer/Square/ReadVariableOp2dense_135/kernel/Regularizer/Square/ReadVariableOp2F
!dense_136/StatefulPartitionedCall!dense_136/StatefulPartitionedCall2h
2dense_136/kernel/Regularizer/Square/ReadVariableOp2dense_136/kernel/Regularizer/Square/ReadVariableOp2F
!dense_137/StatefulPartitionedCall!dense_137/StatefulPartitionedCall2h
2dense_137/kernel/Regularizer/Square/ReadVariableOp2dense_137/kernel/Regularizer/Square/ReadVariableOp2F
!dense_138/StatefulPartitionedCall!dense_138/StatefulPartitionedCall2h
2dense_138/kernel/Regularizer/Square/ReadVariableOp2dense_138/kernel/Regularizer/Square/ReadVariableOp2F
!dense_139/StatefulPartitionedCall!dense_139/StatefulPartitionedCall2H
"dropout_81/StatefulPartitionedCall"dropout_81/StatefulPartitionedCall2H
"dropout_82/StatefulPartitionedCall"dropout_82/StatefulPartitionedCall2H
"dropout_83/StatefulPartitionedCall"dropout_83/StatefulPartitionedCall2P
&normalization_1/Reshape/ReadVariableOp&normalization_1/Reshape/ReadVariableOp2T
(normalization_1/Reshape_1/ReadVariableOp(normalization_1/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_81_layer_call_and_return_conditional_losses_703714

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_82_layer_call_and_return_conditional_losses_703778

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?_
?
I__inference_sequential_27_layer_call_and_return_conditional_losses_703345

inputs3
/normalization_1_reshape_readvariableop_resource5
1normalization_1_reshape_1_readvariableop_resource
dense_135_703292
dense_135_703294
dense_136_703298
dense_136_703300
dense_137_703304
dense_137_703306
dense_138_703310
dense_138_703312
dense_139_703315
dense_139_703317
identity??!dense_135/StatefulPartitionedCall?2dense_135/kernel/Regularizer/Square/ReadVariableOp?!dense_136/StatefulPartitionedCall?2dense_136/kernel/Regularizer/Square/ReadVariableOp?!dense_137/StatefulPartitionedCall?2dense_137/kernel/Regularizer/Square/ReadVariableOp?!dense_138/StatefulPartitionedCall?2dense_138/kernel/Regularizer/Square/ReadVariableOp?!dense_139/StatefulPartitionedCall?&normalization_1/Reshape/ReadVariableOp?(normalization_1/Reshape_1/ReadVariableOp?
&normalization_1/Reshape/ReadVariableOpReadVariableOp/normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_1/Reshape/ReadVariableOp?
normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_1/Reshape/shape?
normalization_1/ReshapeReshape.normalization_1/Reshape/ReadVariableOp:value:0&normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape?
(normalization_1/Reshape_1/ReadVariableOpReadVariableOp1normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_1/Reshape_1/ReadVariableOp?
normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_1/Reshape_1/shape?
normalization_1/Reshape_1Reshape0normalization_1/Reshape_1/ReadVariableOp:value:0(normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape_1?
normalization_1/subSubinputs normalization_1/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_1/sub?
normalization_1/SqrtSqrt"normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_1/Sqrt{
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_1/Maximum/y?
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_1/Maximum?
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_1/truediv?
!dense_135/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0dense_135_703292dense_135_703294*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_135_layer_call_and_return_conditional_losses_7028502#
!dense_135/StatefulPartitionedCall?
dropout_81/PartitionedCallPartitionedCall*dense_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_81_layer_call_and_return_conditional_losses_7028832
dropout_81/PartitionedCall?
!dense_136/StatefulPartitionedCallStatefulPartitionedCall#dropout_81/PartitionedCall:output:0dense_136_703298dense_136_703300*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_136_layer_call_and_return_conditional_losses_7029132#
!dense_136/StatefulPartitionedCall?
dropout_82/PartitionedCallPartitionedCall*dense_136/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_82_layer_call_and_return_conditional_losses_7029462
dropout_82/PartitionedCall?
!dense_137/StatefulPartitionedCallStatefulPartitionedCall#dropout_82/PartitionedCall:output:0dense_137_703304dense_137_703306*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_137_layer_call_and_return_conditional_losses_7029762#
!dense_137/StatefulPartitionedCall?
dropout_83/PartitionedCallPartitionedCall*dense_137/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_83_layer_call_and_return_conditional_losses_7030092
dropout_83/PartitionedCall?
!dense_138/StatefulPartitionedCallStatefulPartitionedCall#dropout_83/PartitionedCall:output:0dense_138_703310dense_138_703312*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_138_layer_call_and_return_conditional_losses_7030392#
!dense_138/StatefulPartitionedCall?
!dense_139/StatefulPartitionedCallStatefulPartitionedCall*dense_138/StatefulPartitionedCall:output:0dense_139_703315dense_139_703317*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_139_layer_call_and_return_conditional_losses_7030652#
!dense_139/StatefulPartitionedCall?
2dense_135/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_135_703292*
_output_shapes
:	?*
dtype024
2dense_135/kernel/Regularizer/Square/ReadVariableOp?
#dense_135/kernel/Regularizer/SquareSquare:dense_135/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2%
#dense_135/kernel/Regularizer/Square?
"dense_135/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_135/kernel/Regularizer/Const?
 dense_135/kernel/Regularizer/SumSum'dense_135/kernel/Regularizer/Square:y:0+dense_135/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/Sum?
"dense_135/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_135/kernel/Regularizer/mul/x?
 dense_135/kernel/Regularizer/mulMul+dense_135/kernel/Regularizer/mul/x:output:0)dense_135/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/mul?
2dense_136/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_136_703298* 
_output_shapes
:
??*
dtype024
2dense_136/kernel/Regularizer/Square/ReadVariableOp?
#dense_136/kernel/Regularizer/SquareSquare:dense_136/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_136/kernel/Regularizer/Square?
"dense_136/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_136/kernel/Regularizer/Const?
 dense_136/kernel/Regularizer/SumSum'dense_136/kernel/Regularizer/Square:y:0+dense_136/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/Sum?
"dense_136/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_136/kernel/Regularizer/mul/x?
 dense_136/kernel/Regularizer/mulMul+dense_136/kernel/Regularizer/mul/x:output:0)dense_136/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/mul?
2dense_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_137_703304* 
_output_shapes
:
??*
dtype024
2dense_137/kernel/Regularizer/Square/ReadVariableOp?
#dense_137/kernel/Regularizer/SquareSquare:dense_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_137/kernel/Regularizer/Square?
"dense_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_137/kernel/Regularizer/Const?
 dense_137/kernel/Regularizer/SumSum'dense_137/kernel/Regularizer/Square:y:0+dense_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/Sum?
"dense_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_137/kernel/Regularizer/mul/x?
 dense_137/kernel/Regularizer/mulMul+dense_137/kernel/Regularizer/mul/x:output:0)dense_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/mul?
2dense_138/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_138_703310* 
_output_shapes
:
??*
dtype024
2dense_138/kernel/Regularizer/Square/ReadVariableOp?
#dense_138/kernel/Regularizer/SquareSquare:dense_138/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_138/kernel/Regularizer/Square?
"dense_138/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_138/kernel/Regularizer/Const?
 dense_138/kernel/Regularizer/SumSum'dense_138/kernel/Regularizer/Square:y:0+dense_138/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/Sum?
"dense_138/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_138/kernel/Regularizer/mul/x?
 dense_138/kernel/Regularizer/mulMul+dense_138/kernel/Regularizer/mul/x:output:0)dense_138/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/mul?
IdentityIdentity*dense_139/StatefulPartitionedCall:output:0"^dense_135/StatefulPartitionedCall3^dense_135/kernel/Regularizer/Square/ReadVariableOp"^dense_136/StatefulPartitionedCall3^dense_136/kernel/Regularizer/Square/ReadVariableOp"^dense_137/StatefulPartitionedCall3^dense_137/kernel/Regularizer/Square/ReadVariableOp"^dense_138/StatefulPartitionedCall3^dense_138/kernel/Regularizer/Square/ReadVariableOp"^dense_139/StatefulPartitionedCall'^normalization_1/Reshape/ReadVariableOp)^normalization_1/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????????????::::::::::::2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2h
2dense_135/kernel/Regularizer/Square/ReadVariableOp2dense_135/kernel/Regularizer/Square/ReadVariableOp2F
!dense_136/StatefulPartitionedCall!dense_136/StatefulPartitionedCall2h
2dense_136/kernel/Regularizer/Square/ReadVariableOp2dense_136/kernel/Regularizer/Square/ReadVariableOp2F
!dense_137/StatefulPartitionedCall!dense_137/StatefulPartitionedCall2h
2dense_137/kernel/Regularizer/Square/ReadVariableOp2dense_137/kernel/Regularizer/Square/ReadVariableOp2F
!dense_138/StatefulPartitionedCall!dense_138/StatefulPartitionedCall2h
2dense_138/kernel/Regularizer/Square/ReadVariableOp2dense_138/kernel/Regularizer/Square/ReadVariableOp2F
!dense_139/StatefulPartitionedCall!dense_139/StatefulPartitionedCall2P
&normalization_1/Reshape/ReadVariableOp&normalization_1/Reshape/ReadVariableOp2T
(normalization_1/Reshape_1/ReadVariableOp(normalization_1/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?d
?
I__inference_sequential_27_layer_call_and_return_conditional_losses_703106
normalization_1_input3
/normalization_1_reshape_readvariableop_resource5
1normalization_1_reshape_1_readvariableop_resource
dense_135_702861
dense_135_702863
dense_136_702924
dense_136_702926
dense_137_702987
dense_137_702989
dense_138_703050
dense_138_703052
dense_139_703076
dense_139_703078
identity??!dense_135/StatefulPartitionedCall?2dense_135/kernel/Regularizer/Square/ReadVariableOp?!dense_136/StatefulPartitionedCall?2dense_136/kernel/Regularizer/Square/ReadVariableOp?!dense_137/StatefulPartitionedCall?2dense_137/kernel/Regularizer/Square/ReadVariableOp?!dense_138/StatefulPartitionedCall?2dense_138/kernel/Regularizer/Square/ReadVariableOp?!dense_139/StatefulPartitionedCall?"dropout_81/StatefulPartitionedCall?"dropout_82/StatefulPartitionedCall?"dropout_83/StatefulPartitionedCall?&normalization_1/Reshape/ReadVariableOp?(normalization_1/Reshape_1/ReadVariableOp?
&normalization_1/Reshape/ReadVariableOpReadVariableOp/normalization_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_1/Reshape/ReadVariableOp?
normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_1/Reshape/shape?
normalization_1/ReshapeReshape.normalization_1/Reshape/ReadVariableOp:value:0&normalization_1/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape?
(normalization_1/Reshape_1/ReadVariableOpReadVariableOp1normalization_1_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_1/Reshape_1/ReadVariableOp?
normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_1/Reshape_1/shape?
normalization_1/Reshape_1Reshape0normalization_1/Reshape_1/ReadVariableOp:value:0(normalization_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_1/Reshape_1?
normalization_1/subSubnormalization_1_input normalization_1/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_1/sub?
normalization_1/SqrtSqrt"normalization_1/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_1/Sqrt{
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_1/Maximum/y?
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_1/Maximum?
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_1/truediv?
!dense_135/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0dense_135_702861dense_135_702863*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_135_layer_call_and_return_conditional_losses_7028502#
!dense_135/StatefulPartitionedCall?
"dropout_81/StatefulPartitionedCallStatefulPartitionedCall*dense_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_81_layer_call_and_return_conditional_losses_7028782$
"dropout_81/StatefulPartitionedCall?
!dense_136/StatefulPartitionedCallStatefulPartitionedCall+dropout_81/StatefulPartitionedCall:output:0dense_136_702924dense_136_702926*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_136_layer_call_and_return_conditional_losses_7029132#
!dense_136/StatefulPartitionedCall?
"dropout_82/StatefulPartitionedCallStatefulPartitionedCall*dense_136/StatefulPartitionedCall:output:0#^dropout_81/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_82_layer_call_and_return_conditional_losses_7029412$
"dropout_82/StatefulPartitionedCall?
!dense_137/StatefulPartitionedCallStatefulPartitionedCall+dropout_82/StatefulPartitionedCall:output:0dense_137_702987dense_137_702989*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_137_layer_call_and_return_conditional_losses_7029762#
!dense_137/StatefulPartitionedCall?
"dropout_83/StatefulPartitionedCallStatefulPartitionedCall*dense_137/StatefulPartitionedCall:output:0#^dropout_82/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_83_layer_call_and_return_conditional_losses_7030042$
"dropout_83/StatefulPartitionedCall?
!dense_138/StatefulPartitionedCallStatefulPartitionedCall+dropout_83/StatefulPartitionedCall:output:0dense_138_703050dense_138_703052*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_138_layer_call_and_return_conditional_losses_7030392#
!dense_138/StatefulPartitionedCall?
!dense_139/StatefulPartitionedCallStatefulPartitionedCall*dense_138/StatefulPartitionedCall:output:0dense_139_703076dense_139_703078*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_139_layer_call_and_return_conditional_losses_7030652#
!dense_139/StatefulPartitionedCall?
2dense_135/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_135_702861*
_output_shapes
:	?*
dtype024
2dense_135/kernel/Regularizer/Square/ReadVariableOp?
#dense_135/kernel/Regularizer/SquareSquare:dense_135/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2%
#dense_135/kernel/Regularizer/Square?
"dense_135/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_135/kernel/Regularizer/Const?
 dense_135/kernel/Regularizer/SumSum'dense_135/kernel/Regularizer/Square:y:0+dense_135/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/Sum?
"dense_135/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_135/kernel/Regularizer/mul/x?
 dense_135/kernel/Regularizer/mulMul+dense_135/kernel/Regularizer/mul/x:output:0)dense_135/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/mul?
2dense_136/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_136_702924* 
_output_shapes
:
??*
dtype024
2dense_136/kernel/Regularizer/Square/ReadVariableOp?
#dense_136/kernel/Regularizer/SquareSquare:dense_136/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_136/kernel/Regularizer/Square?
"dense_136/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_136/kernel/Regularizer/Const?
 dense_136/kernel/Regularizer/SumSum'dense_136/kernel/Regularizer/Square:y:0+dense_136/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/Sum?
"dense_136/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_136/kernel/Regularizer/mul/x?
 dense_136/kernel/Regularizer/mulMul+dense_136/kernel/Regularizer/mul/x:output:0)dense_136/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/mul?
2dense_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_137_702987* 
_output_shapes
:
??*
dtype024
2dense_137/kernel/Regularizer/Square/ReadVariableOp?
#dense_137/kernel/Regularizer/SquareSquare:dense_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_137/kernel/Regularizer/Square?
"dense_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_137/kernel/Regularizer/Const?
 dense_137/kernel/Regularizer/SumSum'dense_137/kernel/Regularizer/Square:y:0+dense_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/Sum?
"dense_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_137/kernel/Regularizer/mul/x?
 dense_137/kernel/Regularizer/mulMul+dense_137/kernel/Regularizer/mul/x:output:0)dense_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/mul?
2dense_138/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_138_703050* 
_output_shapes
:
??*
dtype024
2dense_138/kernel/Regularizer/Square/ReadVariableOp?
#dense_138/kernel/Regularizer/SquareSquare:dense_138/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_138/kernel/Regularizer/Square?
"dense_138/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_138/kernel/Regularizer/Const?
 dense_138/kernel/Regularizer/SumSum'dense_138/kernel/Regularizer/Square:y:0+dense_138/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/Sum?
"dense_138/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_138/kernel/Regularizer/mul/x?
 dense_138/kernel/Regularizer/mulMul+dense_138/kernel/Regularizer/mul/x:output:0)dense_138/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/mul?
IdentityIdentity*dense_139/StatefulPartitionedCall:output:0"^dense_135/StatefulPartitionedCall3^dense_135/kernel/Regularizer/Square/ReadVariableOp"^dense_136/StatefulPartitionedCall3^dense_136/kernel/Regularizer/Square/ReadVariableOp"^dense_137/StatefulPartitionedCall3^dense_137/kernel/Regularizer/Square/ReadVariableOp"^dense_138/StatefulPartitionedCall3^dense_138/kernel/Regularizer/Square/ReadVariableOp"^dense_139/StatefulPartitionedCall#^dropout_81/StatefulPartitionedCall#^dropout_82/StatefulPartitionedCall#^dropout_83/StatefulPartitionedCall'^normalization_1/Reshape/ReadVariableOp)^normalization_1/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????????????::::::::::::2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2h
2dense_135/kernel/Regularizer/Square/ReadVariableOp2dense_135/kernel/Regularizer/Square/ReadVariableOp2F
!dense_136/StatefulPartitionedCall!dense_136/StatefulPartitionedCall2h
2dense_136/kernel/Regularizer/Square/ReadVariableOp2dense_136/kernel/Regularizer/Square/ReadVariableOp2F
!dense_137/StatefulPartitionedCall!dense_137/StatefulPartitionedCall2h
2dense_137/kernel/Regularizer/Square/ReadVariableOp2dense_137/kernel/Regularizer/Square/ReadVariableOp2F
!dense_138/StatefulPartitionedCall!dense_138/StatefulPartitionedCall2h
2dense_138/kernel/Regularizer/Square/ReadVariableOp2dense_138/kernel/Regularizer/Square/ReadVariableOp2F
!dense_139/StatefulPartitionedCall!dense_139/StatefulPartitionedCall2H
"dropout_81/StatefulPartitionedCall"dropout_81/StatefulPartitionedCall2H
"dropout_82/StatefulPartitionedCall"dropout_82/StatefulPartitionedCall2H
"dropout_83/StatefulPartitionedCall"dropout_83/StatefulPartitionedCall2P
&normalization_1/Reshape/ReadVariableOp&normalization_1/Reshape/ReadVariableOp2T
(normalization_1/Reshape_1/ReadVariableOp(normalization_1/Reshape_1/ReadVariableOp:g c
0
_output_shapes
:??????????????????
/
_user_specified_namenormalization_1_input
?
?
E__inference_dense_137_layer_call_and_return_conditional_losses_703811

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_137/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
2dense_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_137/kernel/Regularizer/Square/ReadVariableOp?
#dense_137/kernel/Regularizer/SquareSquare:dense_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_137/kernel/Regularizer/Square?
"dense_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_137/kernel/Regularizer/Const?
 dense_137/kernel/Regularizer/SumSum'dense_137/kernel/Regularizer/Square:y:0+dense_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/Sum?
"dense_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_137/kernel/Regularizer/mul/x?
 dense_137/kernel/Regularizer/mulMul+dense_137/kernel/Regularizer/mul/x:output:0)dense_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_137/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_137/kernel/Regularizer/Square/ReadVariableOp2dense_137/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_83_layer_call_and_return_conditional_losses_703837

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_703920?
;dense_136_kernel_regularizer_square_readvariableop_resource
identity??2dense_136/kernel/Regularizer/Square/ReadVariableOp?
2dense_136/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_136_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_136/kernel/Regularizer/Square/ReadVariableOp?
#dense_136/kernel/Regularizer/SquareSquare:dense_136/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_136/kernel/Regularizer/Square?
"dense_136/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_136/kernel/Regularizer/Const?
 dense_136/kernel/Regularizer/SumSum'dense_136/kernel/Regularizer/Square:y:0+dense_136/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/Sum?
"dense_136/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_136/kernel/Regularizer/mul/x?
 dense_136/kernel/Regularizer/mulMul+dense_136/kernel/Regularizer/mul/x:output:0)dense_136/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/mul?
IdentityIdentity$dense_136/kernel/Regularizer/mul:z:03^dense_136/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2dense_136/kernel/Regularizer/Square/ReadVariableOp2dense_136/kernel/Regularizer/Square/ReadVariableOp
?
G
+__inference_dropout_83_layer_call_fn_703847

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_83_layer_call_and_return_conditional_losses_7030092
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_27_layer_call_fn_703641

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_7032472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_139_layer_call_and_return_conditional_losses_703889

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_83_layer_call_fn_703842

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_83_layer_call_and_return_conditional_losses_7030042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_136_layer_call_and_return_conditional_losses_703752

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_136/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
2dense_136/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_136/kernel/Regularizer/Square/ReadVariableOp?
#dense_136/kernel/Regularizer/SquareSquare:dense_136/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_136/kernel/Regularizer/Square?
"dense_136/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_136/kernel/Regularizer/Const?
 dense_136/kernel/Regularizer/SumSum'dense_136/kernel/Regularizer/Square:y:0+dense_136/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/Sum?
"dense_136/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_136/kernel/Regularizer/mul/x?
 dense_136/kernel/Regularizer/mulMul+dense_136/kernel/Regularizer/mul/x:output:0)dense_136/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_136/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_136/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_136/kernel/Regularizer/Square/ReadVariableOp2dense_136/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_83_layer_call_and_return_conditional_losses_703009

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_dense_139_layer_call_fn_703898

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_139_layer_call_and_return_conditional_losses_7030652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_83_layer_call_and_return_conditional_losses_703004

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_82_layer_call_and_return_conditional_losses_702941

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_dense_137_layer_call_fn_703820

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_137_layer_call_and_return_conditional_losses_7029762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_dense_136_layer_call_fn_703761

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_136_layer_call_and_return_conditional_losses_7029132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_135_layer_call_and_return_conditional_losses_703693

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_135/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
2dense_135/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype024
2dense_135/kernel/Regularizer/Square/ReadVariableOp?
#dense_135/kernel/Regularizer/SquareSquare:dense_135/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2%
#dense_135/kernel/Regularizer/Square?
"dense_135/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_135/kernel/Regularizer/Const?
 dense_135/kernel/Regularizer/SumSum'dense_135/kernel/Regularizer/Square:y:0+dense_135/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/Sum?
"dense_135/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_135/kernel/Regularizer/mul/x?
 dense_135/kernel/Regularizer/mulMul+dense_135/kernel/Regularizer/mul/x:output:0)dense_135/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_135/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_135/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_135/kernel/Regularizer/Square/ReadVariableOp2dense_135/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_27_layer_call_fn_703274
normalization_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnormalization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_7032472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:??????????????????
/
_user_specified_namenormalization_1_input
?
?
__inference_loss_fn_2_703931?
;dense_137_kernel_regularizer_square_readvariableop_resource
identity??2dense_137/kernel/Regularizer/Square/ReadVariableOp?
2dense_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_137_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_137/kernel/Regularizer/Square/ReadVariableOp?
#dense_137/kernel/Regularizer/SquareSquare:dense_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_137/kernel/Regularizer/Square?
"dense_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_137/kernel/Regularizer/Const?
 dense_137/kernel/Regularizer/SumSum'dense_137/kernel/Regularizer/Square:y:0+dense_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/Sum?
"dense_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_137/kernel/Regularizer/mul/x?
 dense_137/kernel/Regularizer/mulMul+dense_137/kernel/Regularizer/mul/x:output:0)dense_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_137/kernel/Regularizer/mul?
IdentityIdentity$dense_137/kernel/Regularizer/mul:z:03^dense_137/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2dense_137/kernel/Regularizer/Square/ReadVariableOp2dense_137/kernel/Regularizer/Square/ReadVariableOp
?
d
F__inference_dropout_81_layer_call_and_return_conditional_losses_703719

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_138_layer_call_and_return_conditional_losses_703039

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_138/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
2dense_138/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2dense_138/kernel/Regularizer/Square/ReadVariableOp?
#dense_138/kernel/Regularizer/SquareSquare:dense_138/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2%
#dense_138/kernel/Regularizer/Square?
"dense_138/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_138/kernel/Regularizer/Const?
 dense_138/kernel/Regularizer/SumSum'dense_138/kernel/Regularizer/Square:y:0+dense_138/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/Sum?
"dense_138/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_138/kernel/Regularizer/mul/x?
 dense_138/kernel/Regularizer/mulMul+dense_138/kernel/Regularizer/mul/x:output:0)dense_138/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_138/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_138/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_138/kernel/Regularizer/Square/ReadVariableOp2dense_138/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_dense_135_layer_call_fn_703702

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_135_layer_call_and_return_conditional_losses_7028502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
`
normalization_1_inputG
'serving_default_normalization_1_input:0??????????????????=
	dense_1390
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?<
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?9
_tf_keras_sequential?8{"class_name": "Sequential", "name": "sequential_27", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_27", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "normalization_1_input"}}, {"class_name": "Normalization", "config": {"name": "normalization_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}}, {"class_name": "Dense", "config": {"name": "dense_135", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_81", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_136", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_82", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_137", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_83", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_138", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_139", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_27", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "normalization_1_input"}}, {"class_name": "Normalization", "config": {"name": "normalization_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}}, {"class_name": "Dense", "config": {"name": "dense_135", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_81", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_136", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_82", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_137", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_83", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_138", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_139", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
state_variables
_broadcast_shape
mean
variance
	count
	keras_api"?
_tf_keras_layer?{"class_name": "Normalization", "name": "normalization_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [512, 15]}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_135", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_135", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 15}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15]}}
?
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_81", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_81", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?

 kernel
!bias
"	variables
#regularization_losses
$trainable_variables
%	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_136", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_136", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
&	variables
'regularization_losses
(trainable_variables
)	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_82", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_82", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?

*kernel
+bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_137", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_137", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
0	variables
1regularization_losses
2trainable_variables
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_83", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_83", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?

4kernel
5bias
6	variables
7regularization_losses
8trainable_variables
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_138", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_138", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?

:kernel
;bias
<	variables
=regularization_losses
>trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_139", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_139", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_ratemwmx my!mz*m{+m|4m}5m~:m;m?v?v? v?!v?*v?+v?4v?5v?:v?;v?"
	optimizer
~
0
1
2
3
4
 5
!6
*7
+8
49
510
:11
;12"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
f
0
1
 2
!3
*4
+5
46
57
:8
;9"
trackable_list_wrapper
?
Enon_trainable_variables
Fmetrics
	variables
Glayer_metrics

Hlayers
regularization_losses
trainable_variables
Ilayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
C
mean
variance
	count"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
#:!	?2dense_135/kernel
:?2dense_135/bias
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Jnon_trainable_variables
Kmetrics
	variables
Llayer_metrics

Mlayers
regularization_losses
trainable_variables
Nlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Onon_trainable_variables
Pmetrics
	variables
Qlayer_metrics

Rlayers
regularization_losses
trainable_variables
Slayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_136/kernel
:?2dense_136/bias
.
 0
!1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
?
Tnon_trainable_variables
Umetrics
"	variables
Vlayer_metrics

Wlayers
#regularization_losses
$trainable_variables
Xlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ynon_trainable_variables
Zmetrics
&	variables
[layer_metrics

\layers
'regularization_losses
(trainable_variables
]layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_137/kernel
:?2dense_137/bias
.
*0
+1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
?
^non_trainable_variables
_metrics
,	variables
`layer_metrics

alayers
-regularization_losses
.trainable_variables
blayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
cnon_trainable_variables
dmetrics
0	variables
elayer_metrics

flayers
1regularization_losses
2trainable_variables
glayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_138/kernel
:?2dense_138/bias
.
40
51"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
?
hnon_trainable_variables
imetrics
6	variables
jlayer_metrics

klayers
7regularization_losses
8trainable_variables
llayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?2dense_139/kernel
:2dense_139/bias
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
?
mnon_trainable_variables
nmetrics
<	variables
olayer_metrics

players
=regularization_losses
>trainable_variables
qlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5
0
1
2"
trackable_list_wrapper
'
r0"
trackable_list_wrapper
 "
trackable_dict_wrapper
_
0
1
2
3
4
5
6
7
	8"
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
(
?0"
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
(
?0"
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
(
?0"
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
(
?0"
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
?
	stotal
	tcount
u	variables
v	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
.
s0
t1"
trackable_list_wrapper
-
u	variables"
_generic_user_object
(:&	?2Adam/dense_135/kernel/m
": ?2Adam/dense_135/bias/m
):'
??2Adam/dense_136/kernel/m
": ?2Adam/dense_136/bias/m
):'
??2Adam/dense_137/kernel/m
": ?2Adam/dense_137/bias/m
):'
??2Adam/dense_138/kernel/m
": ?2Adam/dense_138/bias/m
(:&	?2Adam/dense_139/kernel/m
!:2Adam/dense_139/bias/m
(:&	?2Adam/dense_135/kernel/v
": ?2Adam/dense_135/bias/v
):'
??2Adam/dense_136/kernel/v
": ?2Adam/dense_136/bias/v
):'
??2Adam/dense_137/kernel/v
": ?2Adam/dense_137/bias/v
):'
??2Adam/dense_138/kernel/v
": ?2Adam/dense_138/bias/v
(:&	?2Adam/dense_139/kernel/v
!:2Adam/dense_139/bias/v
?2?
I__inference_sequential_27_layer_call_and_return_conditional_losses_703534
I__inference_sequential_27_layer_call_and_return_conditional_losses_703106
I__inference_sequential_27_layer_call_and_return_conditional_losses_703612
I__inference_sequential_27_layer_call_and_return_conditional_losses_703175?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_702816?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *=?:
8?5
normalization_1_input??????????????????
?2?
.__inference_sequential_27_layer_call_fn_703274
.__inference_sequential_27_layer_call_fn_703670
.__inference_sequential_27_layer_call_fn_703372
.__inference_sequential_27_layer_call_fn_703641?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dense_135_layer_call_and_return_conditional_losses_703693?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_135_layer_call_fn_703702?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dropout_81_layer_call_and_return_conditional_losses_703719
F__inference_dropout_81_layer_call_and_return_conditional_losses_703714?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_81_layer_call_fn_703724
+__inference_dropout_81_layer_call_fn_703729?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dense_136_layer_call_and_return_conditional_losses_703752?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_136_layer_call_fn_703761?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dropout_82_layer_call_and_return_conditional_losses_703773
F__inference_dropout_82_layer_call_and_return_conditional_losses_703778?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_82_layer_call_fn_703788
+__inference_dropout_82_layer_call_fn_703783?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dense_137_layer_call_and_return_conditional_losses_703811?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_137_layer_call_fn_703820?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dropout_83_layer_call_and_return_conditional_losses_703832
F__inference_dropout_83_layer_call_and_return_conditional_losses_703837?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_83_layer_call_fn_703847
+__inference_dropout_83_layer_call_fn_703842?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dense_138_layer_call_and_return_conditional_losses_703870?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_138_layer_call_fn_703879?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_139_layer_call_and_return_conditional_losses_703889?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_139_layer_call_fn_703898?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_703909?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_703920?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_703931?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_703942?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
$__inference_signature_wrapper_703435normalization_1_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_702816? !*+45:;G?D
=?:
8?5
normalization_1_input??????????????????
? "5?2
0
	dense_139#? 
	dense_139??????????
E__inference_dense_135_layer_call_and_return_conditional_losses_703693]/?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????
? ~
*__inference_dense_135_layer_call_fn_703702P/?,
%?"
 ?
inputs?????????
? "????????????
E__inference_dense_136_layer_call_and_return_conditional_losses_703752^ !0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_136_layer_call_fn_703761Q !0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_137_layer_call_and_return_conditional_losses_703811^*+0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_137_layer_call_fn_703820Q*+0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_138_layer_call_and_return_conditional_losses_703870^450?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_138_layer_call_fn_703879Q450?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_139_layer_call_and_return_conditional_losses_703889]:;0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_139_layer_call_fn_703898P:;0?-
&?#
!?
inputs??????????
? "???????????
F__inference_dropout_81_layer_call_and_return_conditional_losses_703714^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
F__inference_dropout_81_layer_call_and_return_conditional_losses_703719^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
+__inference_dropout_81_layer_call_fn_703724Q4?1
*?'
!?
inputs??????????
p
? "????????????
+__inference_dropout_81_layer_call_fn_703729Q4?1
*?'
!?
inputs??????????
p 
? "????????????
F__inference_dropout_82_layer_call_and_return_conditional_losses_703773^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
F__inference_dropout_82_layer_call_and_return_conditional_losses_703778^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
+__inference_dropout_82_layer_call_fn_703783Q4?1
*?'
!?
inputs??????????
p
? "????????????
+__inference_dropout_82_layer_call_fn_703788Q4?1
*?'
!?
inputs??????????
p 
? "????????????
F__inference_dropout_83_layer_call_and_return_conditional_losses_703832^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
F__inference_dropout_83_layer_call_and_return_conditional_losses_703837^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
+__inference_dropout_83_layer_call_fn_703842Q4?1
*?'
!?
inputs??????????
p
? "????????????
+__inference_dropout_83_layer_call_fn_703847Q4?1
*?'
!?
inputs??????????
p 
? "???????????;
__inference_loss_fn_0_703909?

? 
? "? ;
__inference_loss_fn_1_703920 ?

? 
? "? ;
__inference_loss_fn_2_703931*?

? 
? "? ;
__inference_loss_fn_3_7039424?

? 
? "? ?
I__inference_sequential_27_layer_call_and_return_conditional_losses_703106? !*+45:;O?L
E?B
8?5
normalization_1_input??????????????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_27_layer_call_and_return_conditional_losses_703175? !*+45:;O?L
E?B
8?5
normalization_1_input??????????????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_27_layer_call_and_return_conditional_losses_703534w !*+45:;@?=
6?3
)?&
inputs??????????????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_27_layer_call_and_return_conditional_losses_703612w !*+45:;@?=
6?3
)?&
inputs??????????????????
p 

 
? "%?"
?
0?????????
? ?
.__inference_sequential_27_layer_call_fn_703274y !*+45:;O?L
E?B
8?5
normalization_1_input??????????????????
p

 
? "???????????
.__inference_sequential_27_layer_call_fn_703372y !*+45:;O?L
E?B
8?5
normalization_1_input??????????????????
p 

 
? "???????????
.__inference_sequential_27_layer_call_fn_703641j !*+45:;@?=
6?3
)?&
inputs??????????????????
p

 
? "???????????
.__inference_sequential_27_layer_call_fn_703670j !*+45:;@?=
6?3
)?&
inputs??????????????????
p 

 
? "???????????
$__inference_signature_wrapper_703435? !*+45:;`?]
? 
V?S
Q
normalization_1_input8?5
normalization_1_input??????????????????"5?2
0
	dense_139#? 
	dense_139?????????