��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
�
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%��L>"
Ttype0:
2
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
delete_old_dirsbool(�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.22v2.8.2-0-g2ea19cbb5758��	
�
conv3d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d/kernel
{
!conv3d/kernel/Read/ReadVariableOpReadVariableOpconv3d/kernel**
_output_shapes
:@*
dtype0
n
conv3d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d/bias
g
conv3d/bias/Read/ReadVariableOpReadVariableOpconv3d/bias*
_output_shapes
:@*
dtype0
�
conv3d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�* 
shared_nameconv3d_1/kernel
�
#conv3d_1/kernel/Read/ReadVariableOpReadVariableOpconv3d_1/kernel*+
_output_shapes
:@�*
dtype0
s
conv3d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3d_1/bias
l
!conv3d_1/bias/Read/ReadVariableOpReadVariableOpconv3d_1/bias*
_output_shapes	
:�*
dtype0
�
conv3d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��* 
shared_nameconv3d_2/kernel
�
#conv3d_2/kernel/Read/ReadVariableOpReadVariableOpconv3d_2/kernel*,
_output_shapes
:��*
dtype0
s
conv3d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3d_2/bias
l
!conv3d_2/bias/Read/ReadVariableOpReadVariableOpconv3d_2/bias*
_output_shapes	
:�*
dtype0
�
conv3d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��* 
shared_nameconv3d_3/kernel
�
#conv3d_3/kernel/Read/ReadVariableOpReadVariableOpconv3d_3/kernel*,
_output_shapes
:��*
dtype0
s
conv3d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3d_3/bias
l
!conv3d_3/bias/Read/ReadVariableOpReadVariableOpconv3d_3/bias*
_output_shapes	
:�*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
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
�
RMSprop/conv3d/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameRMSprop/conv3d/kernel/rms
�
-RMSprop/conv3d/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv3d/kernel/rms**
_output_shapes
:@*
dtype0
�
RMSprop/conv3d/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameRMSprop/conv3d/bias/rms

+RMSprop/conv3d/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv3d/bias/rms*
_output_shapes
:@*
dtype0
�
RMSprop/conv3d_1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@�*,
shared_nameRMSprop/conv3d_1/kernel/rms
�
/RMSprop/conv3d_1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv3d_1/kernel/rms*+
_output_shapes
:@�*
dtype0
�
RMSprop/conv3d_1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_nameRMSprop/conv3d_1/bias/rms
�
-RMSprop/conv3d_1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv3d_1/bias/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/conv3d_2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*,
shared_nameRMSprop/conv3d_2/kernel/rms
�
/RMSprop/conv3d_2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv3d_2/kernel/rms*,
_output_shapes
:��*
dtype0
�
RMSprop/conv3d_2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_nameRMSprop/conv3d_2/bias/rms
�
-RMSprop/conv3d_2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv3d_2/bias/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/conv3d_3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*!
shape:��*,
shared_nameRMSprop/conv3d_3/kernel/rms
�
/RMSprop/conv3d_3/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv3d_3/kernel/rms*,
_output_shapes
:��*
dtype0
�
RMSprop/conv3d_3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_nameRMSprop/conv3d_3/bias/rms
�
-RMSprop/conv3d_3/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv3d_3/bias/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/dense/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*)
shared_nameRMSprop/dense/kernel/rms
�
,RMSprop/dense/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense/kernel/rms* 
_output_shapes
:
��*
dtype0
�
RMSprop/dense/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameRMSprop/dense/bias/rms
}
*RMSprop/dense/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
�^
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�]
value�]B�] B�]
�
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
	optimizer
loss

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature*
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses*
�
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
�
#*_self_saveable_object_factories
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/_random_generator
0__call__
*1&call_and_return_all_conditional_losses* 
�

2kernel
3bias
#4_self_saveable_object_factories
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses*
�
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
�
#B_self_saveable_object_factories
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G_random_generator
H__call__
*I&call_and_return_all_conditional_losses* 
�

Jkernel
Kbias
#L_self_saveable_object_factories
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses*
�
#S_self_saveable_object_factories
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses* 
�
#Z_self_saveable_object_factories
[	variables
\trainable_variables
]regularization_losses
^	keras_api
__random_generator
`__call__
*a&call_and_return_all_conditional_losses* 
�

bkernel
cbias
#d_self_saveable_object_factories
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses*
�
#k_self_saveable_object_factories
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses* 
�
#r_self_saveable_object_factories
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w_random_generator
x__call__
*y&call_and_return_all_conditional_losses* 
�
#z_self_saveable_object_factories
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+�&call_and_return_all_conditional_losses* 
�
�kernel
	�bias
$�_self_saveable_object_factories
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
	�iter

�decay
�learning_rate
�momentum
�rho
rms�
rms�
2rms�
3rms�
Jrms�
Krms�
brms�
crms��rms��rms�*
* 

�serving_default* 
* 
L
0
1
22
33
J4
K5
b6
c7
�8
�9*
L
0
1
22
33
J4
K5
b6
c7
�8
�9*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
]W
VARIABLE_VALUEconv3d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv3d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEconv3d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv3d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

20
31*

20
31*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEconv3d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv3d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

J0
K1*

J0
K1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEconv3d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv3d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

b0
c1*

b0
c1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
s	variables
ttrainable_variables
uregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
j
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
13*

�0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

�total

�count
�	variables
�	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
��
VARIABLE_VALUERMSprop/conv3d/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUERMSprop/conv3d/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUERMSprop/conv3d_1/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUERMSprop/conv3d_1/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUERMSprop/conv3d_2/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUERMSprop/conv3d_2/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUERMSprop/conv3d_3/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUERMSprop/conv3d_3/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUERMSprop/dense/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUERMSprop/dense/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_input_1Placeholder*3
_output_shapes!
:���������@@@*
dtype0*(
shape:���������@@@
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv3d/kernelconv3d/biasconv3d_1/kernelconv3d_1/biasconv3d_2/kernelconv3d_2/biasconv3d_3/kernelconv3d_3/biasdense/kernel
dense/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� */
f*R(
&__inference_signature_wrapper_89187193
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv3d/kernel/Read/ReadVariableOpconv3d/bias/Read/ReadVariableOp#conv3d_1/kernel/Read/ReadVariableOp!conv3d_1/bias/Read/ReadVariableOp#conv3d_2/kernel/Read/ReadVariableOp!conv3d_2/bias/Read/ReadVariableOp#conv3d_3/kernel/Read/ReadVariableOp!conv3d_3/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp-RMSprop/conv3d/kernel/rms/Read/ReadVariableOp+RMSprop/conv3d/bias/rms/Read/ReadVariableOp/RMSprop/conv3d_1/kernel/rms/Read/ReadVariableOp-RMSprop/conv3d_1/bias/rms/Read/ReadVariableOp/RMSprop/conv3d_2/kernel/rms/Read/ReadVariableOp-RMSprop/conv3d_2/bias/rms/Read/ReadVariableOp/RMSprop/conv3d_3/kernel/rms/Read/ReadVariableOp-RMSprop/conv3d_3/bias/rms/Read/ReadVariableOp,RMSprop/dense/kernel/rms/Read/ReadVariableOp*RMSprop/dense/bias/rms/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU2*0J 8� **
f%R#
!__inference__traced_save_89187551
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d/kernelconv3d/biasconv3d_1/kernelconv3d_1/biasconv3d_2/kernelconv3d_2/biasconv3d_3/kernelconv3d_3/biasdense/kernel
dense/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcountRMSprop/conv3d/kernel/rmsRMSprop/conv3d/bias/rmsRMSprop/conv3d_1/kernel/rmsRMSprop/conv3d_1/bias/rmsRMSprop/conv3d_2/kernel/rmsRMSprop/conv3d_2/bias/rmsRMSprop/conv3d_3/kernel/rmsRMSprop/conv3d_3/bias/rmsRMSprop/dense/kernel/rmsRMSprop/dense/bias/rms*'
Tin 
2*
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
GPU2*0J 8� *-
f(R&
$__inference__traced_restore_89187642Ԓ
�
H
,__inference_dropout_3_layer_call_fn_89187395

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_89186583m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_1_layer_call_and_return_conditional_losses_89186523

inputs

identity_1[
IdentityIdentityinputs*
T0*4
_output_shapes"
 :����������h

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_3_layer_call_and_return_conditional_losses_89186583

inputs

identity_1[
IdentityIdentityinputs*
T0*4
_output_shapes"
 :����������h

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
c
*__inference_dropout_layer_call_fn_89187232

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_89186786{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������   @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   @22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������   @
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_layer_call_and_return_conditional_losses_89187222

inputs
identityS
	LeakyRelu	LeakyReluinputs*3
_output_shapes!
:���������   @k
IdentityIdentityLeakyRelu:activations:0*
T0*3
_output_shapes!
:���������   @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   @:[ W
3
_output_shapes!
:���������   @
 
_user_specified_nameinputs
�
e
,__inference_dropout_1_layer_call_fn_89187288

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_89186747|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
�
+__inference_conv3d_1_layer_call_fn_89187258

inputs&
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_1_layer_call_and_return_conditional_losses_89186505|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������   @: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������   @
 
_user_specified_nameinputs
�
e
G__inference_dropout_3_layer_call_and_return_conditional_losses_89187405

inputs

identity_1[
IdentityIdentityinputs*
T0*4
_output_shapes"
 :����������h

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

�
F__inference_conv3d_2_layer_call_and_return_conditional_losses_89186535

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
a
E__inference_flatten_layer_call_and_return_conditional_losses_89186591

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� �  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
g
K__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_89186516

inputs
identityT
	LeakyRelu	LeakyReluinputs*4
_output_shapes"
 :����������l
IdentityIdentityLeakyRelu:activations:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

�
F__inference_conv3d_3_layer_call_and_return_conditional_losses_89186565

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_layer_call_fn_89187217

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_leaky_re_lu_layer_call_and_return_conditional_losses_89186486l
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������   @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   @:[ W
3
_output_shapes!
:���������   @
 
_user_specified_nameinputs
�<
�
H__inference_sequential_layer_call_and_return_conditional_losses_89186994
input_1-
conv3d_89186959:@
conv3d_89186961:@0
conv3d_1_89186966:@� 
conv3d_1_89186968:	�1
conv3d_2_89186973:�� 
conv3d_2_89186975:	�1
conv3d_3_89186980:�� 
conv3d_3_89186982:	�"
dense_89186988:
��
dense_89186990:
identity��conv3d/StatefulPartitionedCall� conv3d_1/StatefulPartitionedCall� conv3d_2/StatefulPartitionedCall� conv3d_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�
conv3d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_89186959conv3d_89186961*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_layer_call_and_return_conditional_losses_89186475�
leaky_re_lu/PartitionedCallPartitionedCall'conv3d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_leaky_re_lu_layer_call_and_return_conditional_losses_89186486�
dropout/StatefulPartitionedCallStatefulPartitionedCall$leaky_re_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_89186786�
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv3d_1_89186966conv3d_1_89186968*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_1_layer_call_and_return_conditional_losses_89186505�
leaky_re_lu_1/PartitionedCallPartitionedCall)conv3d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_89186516�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_89186747�
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv3d_2_89186973conv3d_2_89186975*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_2_layer_call_and_return_conditional_losses_89186535�
leaky_re_lu_2/PartitionedCallPartitionedCall)conv3d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_89186546�
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_2_layer_call_and_return_conditional_losses_89186708�
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0conv3d_3_89186980conv3d_3_89186982*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_3_layer_call_and_return_conditional_losses_89186565�
leaky_re_lu_3/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_89186576�
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_89186669�
flatten/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_89186591�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_89186988dense_89186990*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_89186603u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@@@: : : : : : : : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:\ X
3
_output_shapes!
:���������@@@
!
_user_specified_name	input_1
�
c
E__inference_dropout_layer_call_and_return_conditional_losses_89186493

inputs

identity_1Z
IdentityIdentityinputs*
T0*3
_output_shapes!
:���������   @g

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:���������   @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   @:[ W
3
_output_shapes!
:���������   @
 
_user_specified_nameinputs
�

d
E__inference_dropout_layer_call_and_return_conditional_losses_89187249

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O��?p
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:���������   @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:���������   @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:���������   @{
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:���������   @u
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:���������   @e
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:���������   @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   @:[ W
3
_output_shapes!
:���������   @
 
_user_specified_nameinputs
�
a
E__inference_flatten_layer_call_and_return_conditional_losses_89187428

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� �  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�	
�
C__inference_dense_layer_call_and_return_conditional_losses_89187447

inputs2
matmul_readvariableop_resource:
��-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�4
�
H__inference_sequential_layer_call_and_return_conditional_losses_89187094

inputsC
%conv3d_conv3d_readvariableop_resource:@4
&conv3d_biasadd_readvariableop_resource:@F
'conv3d_1_conv3d_readvariableop_resource:@�7
(conv3d_1_biasadd_readvariableop_resource:	�G
'conv3d_2_conv3d_readvariableop_resource:��7
(conv3d_2_biasadd_readvariableop_resource:	�G
'conv3d_3_conv3d_readvariableop_resource:��7
(conv3d_3_biasadd_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
��3
%dense_biasadd_readvariableop_resource:
identity��conv3d/BiasAdd/ReadVariableOp�conv3d/Conv3D/ReadVariableOp�conv3d_1/BiasAdd/ReadVariableOp�conv3d_1/Conv3D/ReadVariableOp�conv3d_2/BiasAdd/ReadVariableOp�conv3d_2/Conv3D/ReadVariableOp�conv3d_3/BiasAdd/ReadVariableOp�conv3d_3/Conv3D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�
conv3d/Conv3D/ReadVariableOpReadVariableOp%conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0�
conv3d/Conv3DConv3Dinputs$conv3d/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������   @*
paddingSAME*
strides	
�
conv3d/BiasAdd/ReadVariableOpReadVariableOp&conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d/BiasAddBiasAddconv3d/Conv3D:output:0%conv3d/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������   @p
leaky_re_lu/LeakyRelu	LeakyReluconv3d/BiasAdd:output:0*3
_output_shapes!
:���������   @
dropout/IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0*
T0*3
_output_shapes!
:���������   @�
conv3d_1/Conv3D/ReadVariableOpReadVariableOp'conv3d_1_conv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
conv3d_1/Conv3DConv3Ddropout/Identity:output:0&conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
�
conv3d_1/BiasAdd/ReadVariableOpReadVariableOp(conv3d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_1/BiasAddBiasAddconv3d_1/Conv3D:output:0'conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������u
leaky_re_lu_1/LeakyRelu	LeakyReluconv3d_1/BiasAdd:output:0*4
_output_shapes"
 :�����������
dropout_1/IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0*
T0*4
_output_shapes"
 :�����������
conv3d_2/Conv3D/ReadVariableOpReadVariableOp'conv3d_2_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_2/Conv3DConv3Ddropout_1/Identity:output:0&conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
�
conv3d_2/BiasAdd/ReadVariableOpReadVariableOp(conv3d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_2/BiasAddBiasAddconv3d_2/Conv3D:output:0'conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������u
leaky_re_lu_2/LeakyRelu	LeakyReluconv3d_2/BiasAdd:output:0*4
_output_shapes"
 :�����������
dropout_2/IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0*
T0*4
_output_shapes"
 :�����������
conv3d_3/Conv3D/ReadVariableOpReadVariableOp'conv3d_3_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_3/Conv3DConv3Ddropout_2/Identity:output:0&conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
�
conv3d_3/BiasAdd/ReadVariableOpReadVariableOp(conv3d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_3/BiasAddBiasAddconv3d_3/Conv3D:output:0'conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������u
leaky_re_lu_3/LeakyRelu	LeakyReluconv3d_3/BiasAdd:output:0*4
_output_shapes"
 :�����������
dropout_3/IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0*
T0*4
_output_shapes"
 :����������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� �  �
flatten/ReshapeReshapedropout_3/Identity:output:0flatten/Const:output:0*
T0*)
_output_shapes
:������������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv3d/BiasAdd/ReadVariableOp^conv3d/Conv3D/ReadVariableOp ^conv3d_1/BiasAdd/ReadVariableOp^conv3d_1/Conv3D/ReadVariableOp ^conv3d_2/BiasAdd/ReadVariableOp^conv3d_2/Conv3D/ReadVariableOp ^conv3d_3/BiasAdd/ReadVariableOp^conv3d_3/Conv3D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@@@: : : : : : : : : : 2>
conv3d/BiasAdd/ReadVariableOpconv3d/BiasAdd/ReadVariableOp2<
conv3d/Conv3D/ReadVariableOpconv3d/Conv3D/ReadVariableOp2B
conv3d_1/BiasAdd/ReadVariableOpconv3d_1/BiasAdd/ReadVariableOp2@
conv3d_1/Conv3D/ReadVariableOpconv3d_1/Conv3D/ReadVariableOp2B
conv3d_2/BiasAdd/ReadVariableOpconv3d_2/BiasAdd/ReadVariableOp2@
conv3d_2/Conv3D/ReadVariableOpconv3d_2/Conv3D/ReadVariableOp2B
conv3d_3/BiasAdd/ReadVariableOpconv3d_3/BiasAdd/ReadVariableOp2@
conv3d_3/Conv3D/ReadVariableOpconv3d_3/Conv3D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������@@@
 
_user_specified_nameinputs
�
L
0__inference_leaky_re_lu_2_layer_call_fn_89187329

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_89186546m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_2_layer_call_and_return_conditional_losses_89187349

inputs

identity_1[
IdentityIdentityinputs*
T0*4
_output_shapes"
 :����������h

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_1_layer_call_and_return_conditional_losses_89187305

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O��?q
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :����������|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :����������v
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :����������f
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
e
,__inference_dropout_3_layer_call_fn_89187400

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_89186669|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_1_layer_call_and_return_conditional_losses_89186747

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O��?q
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :����������|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :����������v
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :����������f
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
�
+__inference_conv3d_3_layer_call_fn_89187370

inputs'
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_3_layer_call_and_return_conditional_losses_89186565|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

�
-__inference_sequential_layer_call_fn_89187025

inputs%
unknown:@
	unknown_0:@(
	unknown_1:@�
	unknown_2:	�)
	unknown_3:��
	unknown_4:	�)
	unknown_5:��
	unknown_6:	�
	unknown_7:
��
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_89186610o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������@@@
 
_user_specified_nameinputs
�
L
0__inference_leaky_re_lu_3_layer_call_fn_89187385

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_89186576m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�>
�
!__inference__traced_save_89187551
file_prefix,
(savev2_conv3d_kernel_read_readvariableop*
&savev2_conv3d_bias_read_readvariableop.
*savev2_conv3d_1_kernel_read_readvariableop,
(savev2_conv3d_1_bias_read_readvariableop.
*savev2_conv3d_2_kernel_read_readvariableop,
(savev2_conv3d_2_bias_read_readvariableop.
*savev2_conv3d_3_kernel_read_readvariableop,
(savev2_conv3d_3_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop8
4savev2_rmsprop_conv3d_kernel_rms_read_readvariableop6
2savev2_rmsprop_conv3d_bias_rms_read_readvariableop:
6savev2_rmsprop_conv3d_1_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv3d_1_bias_rms_read_readvariableop:
6savev2_rmsprop_conv3d_2_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv3d_2_bias_rms_read_readvariableop:
6savev2_rmsprop_conv3d_3_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv3d_3_bias_rms_read_readvariableop7
3savev2_rmsprop_dense_kernel_rms_read_readvariableop5
1savev2_rmsprop_dense_bias_rms_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv3d_kernel_read_readvariableop&savev2_conv3d_bias_read_readvariableop*savev2_conv3d_1_kernel_read_readvariableop(savev2_conv3d_1_bias_read_readvariableop*savev2_conv3d_2_kernel_read_readvariableop(savev2_conv3d_2_bias_read_readvariableop*savev2_conv3d_3_kernel_read_readvariableop(savev2_conv3d_3_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop4savev2_rmsprop_conv3d_kernel_rms_read_readvariableop2savev2_rmsprop_conv3d_bias_rms_read_readvariableop6savev2_rmsprop_conv3d_1_kernel_rms_read_readvariableop4savev2_rmsprop_conv3d_1_bias_rms_read_readvariableop6savev2_rmsprop_conv3d_2_kernel_rms_read_readvariableop4savev2_rmsprop_conv3d_2_bias_rms_read_readvariableop6savev2_rmsprop_conv3d_3_kernel_rms_read_readvariableop4savev2_rmsprop_conv3d_3_bias_rms_read_readvariableop3savev2_rmsprop_dense_kernel_rms_read_readvariableop1savev2_rmsprop_dense_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :@:@:@�:�:��:�:��:�:
��:: : : : : : : :@:@:@�:�:��:�:��:�:
��:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
:@: 

_output_shapes
:@:1-
+
_output_shapes
:@�:!

_output_shapes	
:�:2.
,
_output_shapes
:��:!

_output_shapes	
:�:2.
,
_output_shapes
:��:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :0,
*
_output_shapes
:@: 

_output_shapes
:@:1-
+
_output_shapes
:@�:!

_output_shapes	
:�:2.
,
_output_shapes
:��:!

_output_shapes	
:�:2.
,
_output_shapes
:��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��: 

_output_shapes
::

_output_shapes
: 
�
L
0__inference_leaky_re_lu_1_layer_call_fn_89187273

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_89186516m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_2_layer_call_and_return_conditional_losses_89186553

inputs

identity_1[
IdentityIdentityinputs*
T0*4
_output_shapes"
 :����������h

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�	
�
C__inference_dense_layer_call_and_return_conditional_losses_89186603

inputs2
matmul_readvariableop_resource:
��-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
e
,__inference_dropout_2_layer_call_fn_89187344

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_2_layer_call_and_return_conditional_losses_89186708|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

�
F__inference_conv3d_1_layer_call_and_return_conditional_losses_89187268

inputs=
conv3d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������   @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������   @
 
_user_specified_nameinputs
�
F
*__inference_dropout_layer_call_fn_89187227

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_89186493l
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������   @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   @:[ W
3
_output_shapes!
:���������   @
 
_user_specified_nameinputs
�6
�
H__inference_sequential_layer_call_and_return_conditional_losses_89186956
input_1-
conv3d_89186921:@
conv3d_89186923:@0
conv3d_1_89186928:@� 
conv3d_1_89186930:	�1
conv3d_2_89186935:�� 
conv3d_2_89186937:	�1
conv3d_3_89186942:�� 
conv3d_3_89186944:	�"
dense_89186950:
��
dense_89186952:
identity��conv3d/StatefulPartitionedCall� conv3d_1/StatefulPartitionedCall� conv3d_2/StatefulPartitionedCall� conv3d_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�
conv3d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_89186921conv3d_89186923*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_layer_call_and_return_conditional_losses_89186475�
leaky_re_lu/PartitionedCallPartitionedCall'conv3d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_leaky_re_lu_layer_call_and_return_conditional_losses_89186486�
dropout/PartitionedCallPartitionedCall$leaky_re_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_89186493�
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv3d_1_89186928conv3d_1_89186930*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_1_layer_call_and_return_conditional_losses_89186505�
leaky_re_lu_1/PartitionedCallPartitionedCall)conv3d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_89186516�
dropout_1/PartitionedCallPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_89186523�
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv3d_2_89186935conv3d_2_89186937*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_2_layer_call_and_return_conditional_losses_89186535�
leaky_re_lu_2/PartitionedCallPartitionedCall)conv3d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_89186546�
dropout_2/PartitionedCallPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_2_layer_call_and_return_conditional_losses_89186553�
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0conv3d_3_89186942conv3d_3_89186944*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_3_layer_call_and_return_conditional_losses_89186565�
leaky_re_lu_3/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_89186576�
dropout_3/PartitionedCallPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_89186583�
flatten/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_89186591�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_89186950dense_89186952*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_89186603u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@@@: : : : : : : : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:\ X
3
_output_shapes!
:���������@@@
!
_user_specified_name	input_1
�
g
K__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_89187278

inputs
identityT
	LeakyRelu	LeakyReluinputs*4
_output_shapes"
 :����������l
IdentityIdentityLeakyRelu:activations:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�<
�
H__inference_sequential_layer_call_and_return_conditional_losses_89186870

inputs-
conv3d_89186835:@
conv3d_89186837:@0
conv3d_1_89186842:@� 
conv3d_1_89186844:	�1
conv3d_2_89186849:�� 
conv3d_2_89186851:	�1
conv3d_3_89186856:�� 
conv3d_3_89186858:	�"
dense_89186864:
��
dense_89186866:
identity��conv3d/StatefulPartitionedCall� conv3d_1/StatefulPartitionedCall� conv3d_2/StatefulPartitionedCall� conv3d_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�
conv3d/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_89186835conv3d_89186837*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_layer_call_and_return_conditional_losses_89186475�
leaky_re_lu/PartitionedCallPartitionedCall'conv3d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_leaky_re_lu_layer_call_and_return_conditional_losses_89186486�
dropout/StatefulPartitionedCallStatefulPartitionedCall$leaky_re_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_89186786�
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv3d_1_89186842conv3d_1_89186844*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_1_layer_call_and_return_conditional_losses_89186505�
leaky_re_lu_1/PartitionedCallPartitionedCall)conv3d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_89186516�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_89186747�
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv3d_2_89186849conv3d_2_89186851*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_2_layer_call_and_return_conditional_losses_89186535�
leaky_re_lu_2/PartitionedCallPartitionedCall)conv3d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_89186546�
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_2_layer_call_and_return_conditional_losses_89186708�
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0conv3d_3_89186856conv3d_3_89186858*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_3_layer_call_and_return_conditional_losses_89186565�
leaky_re_lu_3/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_89186576�
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_89186669�
flatten/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_89186591�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_89186864dense_89186866*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_89186603u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@@@: : : : : : : : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������@@@
 
_user_specified_nameinputs
�

f
G__inference_dropout_2_layer_call_and_return_conditional_losses_89186708

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O��?q
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :����������|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :����������v
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :����������f
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

�
-__inference_sequential_layer_call_fn_89187050

inputs%
unknown:@
	unknown_0:@(
	unknown_1:@�
	unknown_2:	�)
	unknown_3:��
	unknown_4:	�)
	unknown_5:��
	unknown_6:	�
	unknown_7:
��
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_89186870o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������@@@
 
_user_specified_nameinputs
�>
�	
#__inference__wrapped_model_89186458
input_1N
0sequential_conv3d_conv3d_readvariableop_resource:@?
1sequential_conv3d_biasadd_readvariableop_resource:@Q
2sequential_conv3d_1_conv3d_readvariableop_resource:@�B
3sequential_conv3d_1_biasadd_readvariableop_resource:	�R
2sequential_conv3d_2_conv3d_readvariableop_resource:��B
3sequential_conv3d_2_biasadd_readvariableop_resource:	�R
2sequential_conv3d_3_conv3d_readvariableop_resource:��B
3sequential_conv3d_3_biasadd_readvariableop_resource:	�C
/sequential_dense_matmul_readvariableop_resource:
��>
0sequential_dense_biasadd_readvariableop_resource:
identity��(sequential/conv3d/BiasAdd/ReadVariableOp�'sequential/conv3d/Conv3D/ReadVariableOp�*sequential/conv3d_1/BiasAdd/ReadVariableOp�)sequential/conv3d_1/Conv3D/ReadVariableOp�*sequential/conv3d_2/BiasAdd/ReadVariableOp�)sequential/conv3d_2/Conv3D/ReadVariableOp�*sequential/conv3d_3/BiasAdd/ReadVariableOp�)sequential/conv3d_3/Conv3D/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�
'sequential/conv3d/Conv3D/ReadVariableOpReadVariableOp0sequential_conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0�
sequential/conv3d/Conv3DConv3Dinput_1/sequential/conv3d/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������   @*
paddingSAME*
strides	
�
(sequential/conv3d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/conv3d/BiasAddBiasAdd!sequential/conv3d/Conv3D:output:00sequential/conv3d/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������   @�
 sequential/leaky_re_lu/LeakyRelu	LeakyRelu"sequential/conv3d/BiasAdd:output:0*3
_output_shapes!
:���������   @�
sequential/dropout/IdentityIdentity.sequential/leaky_re_lu/LeakyRelu:activations:0*
T0*3
_output_shapes!
:���������   @�
)sequential/conv3d_1/Conv3D/ReadVariableOpReadVariableOp2sequential_conv3d_1_conv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
sequential/conv3d_1/Conv3DConv3D$sequential/dropout/Identity:output:01sequential/conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
�
*sequential/conv3d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv3d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv3d_1/BiasAddBiasAdd#sequential/conv3d_1/Conv3D:output:02sequential/conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :�����������
"sequential/leaky_re_lu_1/LeakyRelu	LeakyRelu$sequential/conv3d_1/BiasAdd:output:0*4
_output_shapes"
 :�����������
sequential/dropout_1/IdentityIdentity0sequential/leaky_re_lu_1/LeakyRelu:activations:0*
T0*4
_output_shapes"
 :�����������
)sequential/conv3d_2/Conv3D/ReadVariableOpReadVariableOp2sequential_conv3d_2_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
sequential/conv3d_2/Conv3DConv3D&sequential/dropout_1/Identity:output:01sequential/conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
�
*sequential/conv3d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv3d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv3d_2/BiasAddBiasAdd#sequential/conv3d_2/Conv3D:output:02sequential/conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :�����������
"sequential/leaky_re_lu_2/LeakyRelu	LeakyRelu$sequential/conv3d_2/BiasAdd:output:0*4
_output_shapes"
 :�����������
sequential/dropout_2/IdentityIdentity0sequential/leaky_re_lu_2/LeakyRelu:activations:0*
T0*4
_output_shapes"
 :�����������
)sequential/conv3d_3/Conv3D/ReadVariableOpReadVariableOp2sequential_conv3d_3_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
sequential/conv3d_3/Conv3DConv3D&sequential/dropout_2/Identity:output:01sequential/conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
�
*sequential/conv3d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv3d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv3d_3/BiasAddBiasAdd#sequential/conv3d_3/Conv3D:output:02sequential/conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :�����������
"sequential/leaky_re_lu_3/LeakyRelu	LeakyRelu$sequential/conv3d_3/BiasAdd:output:0*4
_output_shapes"
 :�����������
sequential/dropout_3/IdentityIdentity0sequential/leaky_re_lu_3/LeakyRelu:activations:0*
T0*4
_output_shapes"
 :����������i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� �  �
sequential/flatten/ReshapeReshape&sequential/dropout_3/Identity:output:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:������������
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
IdentityIdentity!sequential/dense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^sequential/conv3d/BiasAdd/ReadVariableOp(^sequential/conv3d/Conv3D/ReadVariableOp+^sequential/conv3d_1/BiasAdd/ReadVariableOp*^sequential/conv3d_1/Conv3D/ReadVariableOp+^sequential/conv3d_2/BiasAdd/ReadVariableOp*^sequential/conv3d_2/Conv3D/ReadVariableOp+^sequential/conv3d_3/BiasAdd/ReadVariableOp*^sequential/conv3d_3/Conv3D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@@@: : : : : : : : : : 2T
(sequential/conv3d/BiasAdd/ReadVariableOp(sequential/conv3d/BiasAdd/ReadVariableOp2R
'sequential/conv3d/Conv3D/ReadVariableOp'sequential/conv3d/Conv3D/ReadVariableOp2X
*sequential/conv3d_1/BiasAdd/ReadVariableOp*sequential/conv3d_1/BiasAdd/ReadVariableOp2V
)sequential/conv3d_1/Conv3D/ReadVariableOp)sequential/conv3d_1/Conv3D/ReadVariableOp2X
*sequential/conv3d_2/BiasAdd/ReadVariableOp*sequential/conv3d_2/BiasAdd/ReadVariableOp2V
)sequential/conv3d_2/Conv3D/ReadVariableOp)sequential/conv3d_2/Conv3D/ReadVariableOp2X
*sequential/conv3d_3/BiasAdd/ReadVariableOp*sequential/conv3d_3/BiasAdd/ReadVariableOp2V
)sequential/conv3d_3/Conv3D/ReadVariableOp)sequential/conv3d_3/Conv3D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:\ X
3
_output_shapes!
:���������@@@
!
_user_specified_name	input_1
�

�
F__inference_conv3d_1_layer_call_and_return_conditional_losses_89186505

inputs=
conv3d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������   @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������   @
 
_user_specified_nameinputs
�
e
G__inference_dropout_1_layer_call_and_return_conditional_losses_89187293

inputs

identity_1[
IdentityIdentityinputs*
T0*4
_output_shapes"
 :����������h

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
�
)__inference_conv3d_layer_call_fn_89187202

inputs%
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_layer_call_and_return_conditional_losses_89186475{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������   @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������@@@
 
_user_specified_nameinputs
�
�
+__inference_conv3d_2_layer_call_fn_89187314

inputs'
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_2_layer_call_and_return_conditional_losses_89186535|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_3_layer_call_and_return_conditional_losses_89187417

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O��?q
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :����������|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :����������v
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :����������f
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
�
(__inference_dense_layer_call_fn_89187437

inputs
unknown:
��
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_89186603o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�6
�
H__inference_sequential_layer_call_and_return_conditional_losses_89186610

inputs-
conv3d_89186476:@
conv3d_89186478:@0
conv3d_1_89186506:@� 
conv3d_1_89186508:	�1
conv3d_2_89186536:�� 
conv3d_2_89186538:	�1
conv3d_3_89186566:�� 
conv3d_3_89186568:	�"
dense_89186604:
��
dense_89186606:
identity��conv3d/StatefulPartitionedCall� conv3d_1/StatefulPartitionedCall� conv3d_2/StatefulPartitionedCall� conv3d_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�
conv3d/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_89186476conv3d_89186478*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv3d_layer_call_and_return_conditional_losses_89186475�
leaky_re_lu/PartitionedCallPartitionedCall'conv3d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_leaky_re_lu_layer_call_and_return_conditional_losses_89186486�
dropout/PartitionedCallPartitionedCall$leaky_re_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_89186493�
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv3d_1_89186506conv3d_1_89186508*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_1_layer_call_and_return_conditional_losses_89186505�
leaky_re_lu_1/PartitionedCallPartitionedCall)conv3d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_89186516�
dropout_1/PartitionedCallPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_89186523�
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv3d_2_89186536conv3d_2_89186538*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_2_layer_call_and_return_conditional_losses_89186535�
leaky_re_lu_2/PartitionedCallPartitionedCall)conv3d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_89186546�
dropout_2/PartitionedCallPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_2_layer_call_and_return_conditional_losses_89186553�
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0conv3d_3_89186566conv3d_3_89186568*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv3d_3_layer_call_and_return_conditional_losses_89186565�
leaky_re_lu_3/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_89186576�
dropout_3/PartitionedCallPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_89186583�
flatten/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_89186591�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_89186604dense_89186606*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_89186603u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@@@: : : : : : : : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������@@@
 
_user_specified_nameinputs
�

f
G__inference_dropout_3_layer_call_and_return_conditional_losses_89186669

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O��?q
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :����������|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :����������v
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :����������f
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_layer_call_and_return_conditional_losses_89187237

inputs

identity_1Z
IdentityIdentityinputs*
T0*3
_output_shapes!
:���������   @g

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:���������   @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   @:[ W
3
_output_shapes!
:���������   @
 
_user_specified_nameinputs
�
g
K__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_89187390

inputs
identityT
	LeakyRelu	LeakyReluinputs*4
_output_shapes"
 :����������l
IdentityIdentityLeakyRelu:activations:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

�
&__inference_signature_wrapper_89187193
input_1%
unknown:@
	unknown_0:@(
	unknown_1:@�
	unknown_2:	�)
	unknown_3:��
	unknown_4:	�)
	unknown_5:��
	unknown_6:	�
	unknown_7:
��
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference__wrapped_model_89186458o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
3
_output_shapes!
:���������@@@
!
_user_specified_name	input_1
�T
�
H__inference_sequential_layer_call_and_return_conditional_losses_89187166

inputsC
%conv3d_conv3d_readvariableop_resource:@4
&conv3d_biasadd_readvariableop_resource:@F
'conv3d_1_conv3d_readvariableop_resource:@�7
(conv3d_1_biasadd_readvariableop_resource:	�G
'conv3d_2_conv3d_readvariableop_resource:��7
(conv3d_2_biasadd_readvariableop_resource:	�G
'conv3d_3_conv3d_readvariableop_resource:��7
(conv3d_3_biasadd_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
��3
%dense_biasadd_readvariableop_resource:
identity��conv3d/BiasAdd/ReadVariableOp�conv3d/Conv3D/ReadVariableOp�conv3d_1/BiasAdd/ReadVariableOp�conv3d_1/Conv3D/ReadVariableOp�conv3d_2/BiasAdd/ReadVariableOp�conv3d_2/Conv3D/ReadVariableOp�conv3d_3/BiasAdd/ReadVariableOp�conv3d_3/Conv3D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�
conv3d/Conv3D/ReadVariableOpReadVariableOp%conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0�
conv3d/Conv3DConv3Dinputs$conv3d/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������   @*
paddingSAME*
strides	
�
conv3d/BiasAdd/ReadVariableOpReadVariableOp&conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d/BiasAddBiasAddconv3d/Conv3D:output:0%conv3d/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������   @p
leaky_re_lu/LeakyRelu	LeakyReluconv3d/BiasAdd:output:0*3
_output_shapes!
:���������   @Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O��?�
dropout/dropout/MulMul#leaky_re_lu/LeakyRelu:activations:0dropout/dropout/Const:output:0*
T0*3
_output_shapes!
:���������   @h
dropout/dropout/ShapeShape#leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*3
_output_shapes!
:���������   @*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:���������   @�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:���������   @�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*3
_output_shapes!
:���������   @�
conv3d_1/Conv3D/ReadVariableOpReadVariableOp'conv3d_1_conv3d_readvariableop_resource*+
_output_shapes
:@�*
dtype0�
conv3d_1/Conv3DConv3Ddropout/dropout/Mul_1:z:0&conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
�
conv3d_1/BiasAdd/ReadVariableOpReadVariableOp(conv3d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_1/BiasAddBiasAddconv3d_1/Conv3D:output:0'conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������u
leaky_re_lu_1/LeakyRelu	LeakyReluconv3d_1/BiasAdd:output:0*4
_output_shapes"
 :����������\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O��?�
dropout_1/dropout/MulMul%leaky_re_lu_1/LeakyRelu:activations:0 dropout_1/dropout/Const:output:0*
T0*4
_output_shapes"
 :����������l
dropout_1/dropout/ShapeShape%leaky_re_lu_1/LeakyRelu:activations:0*
T0*
_output_shapes
:�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*4
_output_shapes"
 :����������*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :�����������
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :�����������
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*4
_output_shapes"
 :�����������
conv3d_2/Conv3D/ReadVariableOpReadVariableOp'conv3d_2_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_2/Conv3DConv3Ddropout_1/dropout/Mul_1:z:0&conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
�
conv3d_2/BiasAdd/ReadVariableOpReadVariableOp(conv3d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_2/BiasAddBiasAddconv3d_2/Conv3D:output:0'conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������u
leaky_re_lu_2/LeakyRelu	LeakyReluconv3d_2/BiasAdd:output:0*4
_output_shapes"
 :����������\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O��?�
dropout_2/dropout/MulMul%leaky_re_lu_2/LeakyRelu:activations:0 dropout_2/dropout/Const:output:0*
T0*4
_output_shapes"
 :����������l
dropout_2/dropout/ShapeShape%leaky_re_lu_2/LeakyRelu:activations:0*
T0*
_output_shapes
:�
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*4
_output_shapes"
 :����������*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :�����������
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :�����������
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*4
_output_shapes"
 :�����������
conv3d_3/Conv3D/ReadVariableOpReadVariableOp'conv3d_3_conv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
conv3d_3/Conv3DConv3Ddropout_2/dropout/Mul_1:z:0&conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
�
conv3d_3/BiasAdd/ReadVariableOpReadVariableOp(conv3d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3d_3/BiasAddBiasAddconv3d_3/Conv3D:output:0'conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������u
leaky_re_lu_3/LeakyRelu	LeakyReluconv3d_3/BiasAdd:output:0*4
_output_shapes"
 :����������\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O��?�
dropout_3/dropout/MulMul%leaky_re_lu_3/LeakyRelu:activations:0 dropout_3/dropout/Const:output:0*
T0*4
_output_shapes"
 :����������l
dropout_3/dropout/ShapeShape%leaky_re_lu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:�
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*4
_output_shapes"
 :����������*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :�����������
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :�����������
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*4
_output_shapes"
 :����������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� �  �
flatten/ReshapeReshapedropout_3/dropout/Mul_1:z:0flatten/Const:output:0*
T0*)
_output_shapes
:������������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv3d/BiasAdd/ReadVariableOp^conv3d/Conv3D/ReadVariableOp ^conv3d_1/BiasAdd/ReadVariableOp^conv3d_1/Conv3D/ReadVariableOp ^conv3d_2/BiasAdd/ReadVariableOp^conv3d_2/Conv3D/ReadVariableOp ^conv3d_3/BiasAdd/ReadVariableOp^conv3d_3/Conv3D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@@@: : : : : : : : : : 2>
conv3d/BiasAdd/ReadVariableOpconv3d/BiasAdd/ReadVariableOp2<
conv3d/Conv3D/ReadVariableOpconv3d/Conv3D/ReadVariableOp2B
conv3d_1/BiasAdd/ReadVariableOpconv3d_1/BiasAdd/ReadVariableOp2@
conv3d_1/Conv3D/ReadVariableOpconv3d_1/Conv3D/ReadVariableOp2B
conv3d_2/BiasAdd/ReadVariableOpconv3d_2/BiasAdd/ReadVariableOp2@
conv3d_2/Conv3D/ReadVariableOpconv3d_2/Conv3D/ReadVariableOp2B
conv3d_3/BiasAdd/ReadVariableOpconv3d_3/BiasAdd/ReadVariableOp2@
conv3d_3/Conv3D/ReadVariableOpconv3d_3/Conv3D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������@@@
 
_user_specified_nameinputs
�

f
G__inference_dropout_2_layer_call_and_return_conditional_losses_89187361

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O��?q
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :����������|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :����������v
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :����������f
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

�
F__inference_conv3d_2_layer_call_and_return_conditional_losses_89187324

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

�
D__inference_conv3d_layer_call_and_return_conditional_losses_89186475

inputs<
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������   @*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������   @k
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������   @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������@@@
 
_user_specified_nameinputs
�

d
E__inference_dropout_layer_call_and_return_conditional_losses_89186786

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *O��?p
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:���������   @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:���������   @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:���������   @{
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:���������   @u
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:���������   @e
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:���������   @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   @:[ W
3
_output_shapes!
:���������   @
 
_user_specified_nameinputs
�
H
,__inference_dropout_1_layer_call_fn_89187283

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_89186523m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�n
�
$__inference__traced_restore_89187642
file_prefix<
assignvariableop_conv3d_kernel:@,
assignvariableop_1_conv3d_bias:@A
"assignvariableop_2_conv3d_1_kernel:@�/
 assignvariableop_3_conv3d_1_bias:	�B
"assignvariableop_4_conv3d_2_kernel:��/
 assignvariableop_5_conv3d_2_bias:	�B
"assignvariableop_6_conv3d_3_kernel:��/
 assignvariableop_7_conv3d_3_bias:	�3
assignvariableop_8_dense_kernel:
��+
assignvariableop_9_dense_bias:*
 assignvariableop_10_rmsprop_iter:	 +
!assignvariableop_11_rmsprop_decay: 3
)assignvariableop_12_rmsprop_learning_rate: .
$assignvariableop_13_rmsprop_momentum: )
assignvariableop_14_rmsprop_rho: #
assignvariableop_15_total: #
assignvariableop_16_count: K
-assignvariableop_17_rmsprop_conv3d_kernel_rms:@9
+assignvariableop_18_rmsprop_conv3d_bias_rms:@N
/assignvariableop_19_rmsprop_conv3d_1_kernel_rms:@�<
-assignvariableop_20_rmsprop_conv3d_1_bias_rms:	�O
/assignvariableop_21_rmsprop_conv3d_2_kernel_rms:��<
-assignvariableop_22_rmsprop_conv3d_2_bias_rms:	�O
/assignvariableop_23_rmsprop_conv3d_3_kernel_rms:��<
-assignvariableop_24_rmsprop_conv3d_3_bias_rms:	�@
,assignvariableop_25_rmsprop_dense_kernel_rms:
��8
*assignvariableop_26_rmsprop_dense_bias_rms:
identity_28��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv3d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv3d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv3d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv3d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv3d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv3d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv3d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv3d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp assignvariableop_10_rmsprop_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_rmsprop_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp)assignvariableop_12_rmsprop_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp$assignvariableop_13_rmsprop_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_rmsprop_rhoIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp-assignvariableop_17_rmsprop_conv3d_kernel_rmsIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp+assignvariableop_18_rmsprop_conv3d_bias_rmsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp/assignvariableop_19_rmsprop_conv3d_1_kernel_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp-assignvariableop_20_rmsprop_conv3d_1_bias_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_rmsprop_conv3d_2_kernel_rmsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp-assignvariableop_22_rmsprop_conv3d_2_bias_rmsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_rmsprop_conv3d_3_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp-assignvariableop_24_rmsprop_conv3d_3_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp,assignvariableop_25_rmsprop_dense_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_rmsprop_dense_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
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
�
e
I__inference_leaky_re_lu_layer_call_and_return_conditional_losses_89186486

inputs
identityS
	LeakyRelu	LeakyReluinputs*3
_output_shapes!
:���������   @k
IdentityIdentityLeakyRelu:activations:0*
T0*3
_output_shapes!
:���������   @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   @:[ W
3
_output_shapes!
:���������   @
 
_user_specified_nameinputs
�

�
-__inference_sequential_layer_call_fn_89186633
input_1%
unknown:@
	unknown_0:@(
	unknown_1:@�
	unknown_2:	�)
	unknown_3:��
	unknown_4:	�)
	unknown_5:��
	unknown_6:	�
	unknown_7:
��
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_89186610o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
3
_output_shapes!
:���������@@@
!
_user_specified_name	input_1
�
g
K__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_89186576

inputs
identityT
	LeakyRelu	LeakyReluinputs*4
_output_shapes"
 :����������l
IdentityIdentityLeakyRelu:activations:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

�
-__inference_sequential_layer_call_fn_89186918
input_1%
unknown:@
	unknown_0:@(
	unknown_1:@�
	unknown_2:	�)
	unknown_3:��
	unknown_4:	�)
	unknown_5:��
	unknown_6:	�
	unknown_7:
��
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_89186870o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
3
_output_shapes!
:���������@@@
!
_user_specified_name	input_1
�
g
K__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_89187334

inputs
identityT
	LeakyRelu	LeakyReluinputs*4
_output_shapes"
 :����������l
IdentityIdentityLeakyRelu:activations:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
F
*__inference_flatten_layer_call_fn_89187422

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_89186591b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�

�
D__inference_conv3d_layer_call_and_return_conditional_losses_89187212

inputs<
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������   @*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������   @k
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������   @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������@@@
 
_user_specified_nameinputs
�

�
F__inference_conv3d_3_layer_call_and_return_conditional_losses_89187380

inputs>
conv3d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:��*
dtype0�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :����������l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_2_layer_call_fn_89187339

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_2_layer_call_and_return_conditional_losses_89186553m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs
�
g
K__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_89186546

inputs
identityT
	LeakyRelu	LeakyReluinputs*4
_output_shapes"
 :����������l
IdentityIdentityLeakyRelu:activations:0*
T0*4
_output_shapes"
 :����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:\ X
4
_output_shapes"
 :����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
G
input_1<
serving_default_input_1:0���������@@@9
dense0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
	optimizer
loss

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
�
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#*_self_saveable_object_factories
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/_random_generator
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
�

2kernel
3bias
#4_self_saveable_object_factories
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#B_self_saveable_object_factories
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G_random_generator
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Jkernel
Kbias
#L_self_saveable_object_factories
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#S_self_saveable_object_factories
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#Z_self_saveable_object_factories
[	variables
\trainable_variables
]regularization_losses
^	keras_api
__random_generator
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
�

bkernel
cbias
#d_self_saveable_object_factories
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#k_self_saveable_object_factories
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#r_self_saveable_object_factories
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w_random_generator
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#z_self_saveable_object_factories
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
$�_self_saveable_object_factories
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�iter

�decay
�learning_rate
�momentum
�rho
rms�
rms�
2rms�
3rms�
Jrms�
Krms�
brms�
crms��rms��rms�"
	optimizer
 "
trackable_dict_wrapper
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
h
0
1
22
33
J4
K5
b6
c7
�8
�9"
trackable_list_wrapper
h
0
1
22
33
J4
K5
b6
c7
�8
�9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_sequential_layer_call_fn_89186633
-__inference_sequential_layer_call_fn_89187025
-__inference_sequential_layer_call_fn_89187050
-__inference_sequential_layer_call_fn_89186918�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_layer_call_and_return_conditional_losses_89187094
H__inference_sequential_layer_call_and_return_conditional_losses_89187166
H__inference_sequential_layer_call_and_return_conditional_losses_89186956
H__inference_sequential_layer_call_and_return_conditional_losses_89186994�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
#__inference__wrapped_model_89186458input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
+:)@2conv3d/kernel
:@2conv3d/bias
 "
trackable_dict_wrapper
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_conv3d_layer_call_fn_89187202�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv3d_layer_call_and_return_conditional_losses_89187212�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�2�
.__inference_leaky_re_lu_layer_call_fn_89187217�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_leaky_re_lu_layer_call_and_return_conditional_losses_89187222�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
*__inference_dropout_layer_call_fn_89187227
*__inference_dropout_layer_call_fn_89187232�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_dropout_layer_call_and_return_conditional_losses_89187237
E__inference_dropout_layer_call_and_return_conditional_losses_89187249�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
.:,@�2conv3d_1/kernel
:�2conv3d_1/bias
 "
trackable_dict_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
�2�
+__inference_conv3d_1_layer_call_fn_89187258�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv3d_1_layer_call_and_return_conditional_losses_89187268�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�2�
0__inference_leaky_re_lu_1_layer_call_fn_89187273�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_89187278�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
,__inference_dropout_1_layer_call_fn_89187283
,__inference_dropout_1_layer_call_fn_89187288�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_dropout_1_layer_call_and_return_conditional_losses_89187293
G__inference_dropout_1_layer_call_and_return_conditional_losses_89187305�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
/:-��2conv3d_2/kernel
:�2conv3d_2/bias
 "
trackable_dict_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
�2�
+__inference_conv3d_2_layer_call_fn_89187314�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv3d_2_layer_call_and_return_conditional_losses_89187324�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
�2�
0__inference_leaky_re_lu_2_layer_call_fn_89187329�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_89187334�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
,__inference_dropout_2_layer_call_fn_89187339
,__inference_dropout_2_layer_call_fn_89187344�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_dropout_2_layer_call_and_return_conditional_losses_89187349
G__inference_dropout_2_layer_call_and_return_conditional_losses_89187361�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
/:-��2conv3d_3/kernel
:�2conv3d_3/bias
 "
trackable_dict_wrapper
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
�2�
+__inference_conv3d_3_layer_call_fn_89187370�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv3d_3_layer_call_and_return_conditional_losses_89187380�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
�2�
0__inference_leaky_re_lu_3_layer_call_fn_89187385�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_89187390�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
s	variables
ttrainable_variables
uregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
,__inference_dropout_3_layer_call_fn_89187395
,__inference_dropout_3_layer_call_fn_89187400�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_dropout_3_layer_call_and_return_conditional_losses_89187405
G__inference_dropout_3_layer_call_and_return_conditional_losses_89187417�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_flatten_layer_call_fn_89187422�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_flatten_layer_call_and_return_conditional_losses_89187428�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 :
��2dense/kernel
:2
dense/bias
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_dense_layer_call_fn_89187437�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_layer_call_and_return_conditional_losses_89187447�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
�B�
&__inference_signature_wrapper_89187193input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
�
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
(
�0"
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

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
5:3@2RMSprop/conv3d/kernel/rms
#:!@2RMSprop/conv3d/bias/rms
8:6@�2RMSprop/conv3d_1/kernel/rms
&:$�2RMSprop/conv3d_1/bias/rms
9:7��2RMSprop/conv3d_2/kernel/rms
&:$�2RMSprop/conv3d_2/bias/rms
9:7��2RMSprop/conv3d_3/kernel/rms
&:$�2RMSprop/conv3d_3/bias/rms
*:(
��2RMSprop/dense/kernel/rms
": 2RMSprop/dense/bias/rms�
#__inference__wrapped_model_89186458{23JKbc��<�9
2�/
-�*
input_1���������@@@
� "-�*
(
dense�
dense����������
F__inference_conv3d_1_layer_call_and_return_conditional_losses_89187268u23;�8
1�.
,�)
inputs���������   @
� "2�/
(�%
0����������
� �
+__inference_conv3d_1_layer_call_fn_89187258h23;�8
1�.
,�)
inputs���������   @
� "%�"�����������
F__inference_conv3d_2_layer_call_and_return_conditional_losses_89187324vJK<�9
2�/
-�*
inputs����������
� "2�/
(�%
0����������
� �
+__inference_conv3d_2_layer_call_fn_89187314iJK<�9
2�/
-�*
inputs����������
� "%�"�����������
F__inference_conv3d_3_layer_call_and_return_conditional_losses_89187380vbc<�9
2�/
-�*
inputs����������
� "2�/
(�%
0����������
� �
+__inference_conv3d_3_layer_call_fn_89187370ibc<�9
2�/
-�*
inputs����������
� "%�"�����������
D__inference_conv3d_layer_call_and_return_conditional_losses_89187212t;�8
1�.
,�)
inputs���������@@@
� "1�.
'�$
0���������   @
� �
)__inference_conv3d_layer_call_fn_89187202g;�8
1�.
,�)
inputs���������@@@
� "$�!���������   @�
C__inference_dense_layer_call_and_return_conditional_losses_89187447`��1�.
'�$
"�
inputs�����������
� "%�"
�
0���������
� 
(__inference_dense_layer_call_fn_89187437S��1�.
'�$
"�
inputs�����������
� "�����������
G__inference_dropout_1_layer_call_and_return_conditional_losses_89187293v@�=
6�3
-�*
inputs����������
p 
� "2�/
(�%
0����������
� �
G__inference_dropout_1_layer_call_and_return_conditional_losses_89187305v@�=
6�3
-�*
inputs����������
p
� "2�/
(�%
0����������
� �
,__inference_dropout_1_layer_call_fn_89187283i@�=
6�3
-�*
inputs����������
p 
� "%�"�����������
,__inference_dropout_1_layer_call_fn_89187288i@�=
6�3
-�*
inputs����������
p
� "%�"�����������
G__inference_dropout_2_layer_call_and_return_conditional_losses_89187349v@�=
6�3
-�*
inputs����������
p 
� "2�/
(�%
0����������
� �
G__inference_dropout_2_layer_call_and_return_conditional_losses_89187361v@�=
6�3
-�*
inputs����������
p
� "2�/
(�%
0����������
� �
,__inference_dropout_2_layer_call_fn_89187339i@�=
6�3
-�*
inputs����������
p 
� "%�"�����������
,__inference_dropout_2_layer_call_fn_89187344i@�=
6�3
-�*
inputs����������
p
� "%�"�����������
G__inference_dropout_3_layer_call_and_return_conditional_losses_89187405v@�=
6�3
-�*
inputs����������
p 
� "2�/
(�%
0����������
� �
G__inference_dropout_3_layer_call_and_return_conditional_losses_89187417v@�=
6�3
-�*
inputs����������
p
� "2�/
(�%
0����������
� �
,__inference_dropout_3_layer_call_fn_89187395i@�=
6�3
-�*
inputs����������
p 
� "%�"�����������
,__inference_dropout_3_layer_call_fn_89187400i@�=
6�3
-�*
inputs����������
p
� "%�"�����������
E__inference_dropout_layer_call_and_return_conditional_losses_89187237t?�<
5�2
,�)
inputs���������   @
p 
� "1�.
'�$
0���������   @
� �
E__inference_dropout_layer_call_and_return_conditional_losses_89187249t?�<
5�2
,�)
inputs���������   @
p
� "1�.
'�$
0���������   @
� �
*__inference_dropout_layer_call_fn_89187227g?�<
5�2
,�)
inputs���������   @
p 
� "$�!���������   @�
*__inference_dropout_layer_call_fn_89187232g?�<
5�2
,�)
inputs���������   @
p
� "$�!���������   @�
E__inference_flatten_layer_call_and_return_conditional_losses_89187428g<�9
2�/
-�*
inputs����������
� "'�$
�
0�����������
� �
*__inference_flatten_layer_call_fn_89187422Z<�9
2�/
-�*
inputs����������
� "�������������
K__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_89187278r<�9
2�/
-�*
inputs����������
� "2�/
(�%
0����������
� �
0__inference_leaky_re_lu_1_layer_call_fn_89187273e<�9
2�/
-�*
inputs����������
� "%�"�����������
K__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_89187334r<�9
2�/
-�*
inputs����������
� "2�/
(�%
0����������
� �
0__inference_leaky_re_lu_2_layer_call_fn_89187329e<�9
2�/
-�*
inputs����������
� "%�"�����������
K__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_89187390r<�9
2�/
-�*
inputs����������
� "2�/
(�%
0����������
� �
0__inference_leaky_re_lu_3_layer_call_fn_89187385e<�9
2�/
-�*
inputs����������
� "%�"�����������
I__inference_leaky_re_lu_layer_call_and_return_conditional_losses_89187222p;�8
1�.
,�)
inputs���������   @
� "1�.
'�$
0���������   @
� �
.__inference_leaky_re_lu_layer_call_fn_89187217c;�8
1�.
,�)
inputs���������   @
� "$�!���������   @�
H__inference_sequential_layer_call_and_return_conditional_losses_89186956{23JKbc��D�A
:�7
-�*
input_1���������@@@
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_layer_call_and_return_conditional_losses_89186994{23JKbc��D�A
:�7
-�*
input_1���������@@@
p

 
� "%�"
�
0���������
� �
H__inference_sequential_layer_call_and_return_conditional_losses_89187094z23JKbc��C�@
9�6
,�)
inputs���������@@@
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_layer_call_and_return_conditional_losses_89187166z23JKbc��C�@
9�6
,�)
inputs���������@@@
p

 
� "%�"
�
0���������
� �
-__inference_sequential_layer_call_fn_89186633n23JKbc��D�A
:�7
-�*
input_1���������@@@
p 

 
� "�����������
-__inference_sequential_layer_call_fn_89186918n23JKbc��D�A
:�7
-�*
input_1���������@@@
p

 
� "�����������
-__inference_sequential_layer_call_fn_89187025m23JKbc��C�@
9�6
,�)
inputs���������@@@
p 

 
� "�����������
-__inference_sequential_layer_call_fn_89187050m23JKbc��C�@
9�6
,�)
inputs���������@@@
p

 
� "�����������
&__inference_signature_wrapper_89187193�23JKbc��G�D
� 
=�:
8
input_1-�*
input_1���������@@@"-�*
(
dense�
dense���������