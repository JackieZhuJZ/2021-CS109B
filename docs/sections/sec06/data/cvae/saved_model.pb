У"
В
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
,
Exp
x"T
y"T"
Ttype:

2
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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

RandomStandardNormal

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

ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
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
0
Sigmoid
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
О
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.0-49-g85c8b2a817f8Ћй
|
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 * 
shared_namedense_17/kernel
u
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel* 
_output_shapes
:
 *
dtype0
s
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
l
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes	
:*
dtype0
w
z_mean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namez_mean/kernel
p
!z_mean/kernel/Read/ReadVariableOpReadVariableOpz_mean/kernel*
_output_shapes
:	*
dtype0
n
z_mean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namez_mean/bias
g
z_mean/bias/Read/ReadVariableOpReadVariableOpz_mean/bias*
_output_shapes
:*
dtype0
}
z_log_var/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*!
shared_namez_log_var/kernel
v
$z_log_var/kernel/Read/ReadVariableOpReadVariableOpz_log_var/kernel*
_output_shapes
:	*
dtype0
t
z_log_var/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namez_log_var/bias
m
"z_log_var/bias/Read/ReadVariableOpReadVariableOpz_log_var/bias*
_output_shapes
:*
dtype0
{
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_18/kernel
t
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes
:	*
dtype0
s
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_18/bias
l
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes	
:*
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

conv2d_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_51/kernel
}
$conv2d_51/kernel/Read/ReadVariableOpReadVariableOpconv2d_51/kernel*&
_output_shapes
:*
dtype0
t
conv2d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_51/bias
m
"conv2d_51/bias/Read/ReadVariableOpReadVariableOpconv2d_51/bias*
_output_shapes
:*
dtype0

conv2d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_52/kernel
}
$conv2d_52/kernel/Read/ReadVariableOpReadVariableOpconv2d_52/kernel*&
_output_shapes
:*
dtype0
t
conv2d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_52/bias
m
"conv2d_52/bias/Read/ReadVariableOpReadVariableOpconv2d_52/bias*
_output_shapes
:*
dtype0

conv2d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_53/kernel
}
$conv2d_53/kernel/Read/ReadVariableOpReadVariableOpconv2d_53/kernel*&
_output_shapes
:*
dtype0
t
conv2d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_53/bias
m
"conv2d_53/bias/Read/ReadVariableOpReadVariableOpconv2d_53/bias*
_output_shapes
:*
dtype0

conv2d_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_54/kernel
}
$conv2d_54/kernel/Read/ReadVariableOpReadVariableOpconv2d_54/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_54/bias
m
"conv2d_54/bias/Read/ReadVariableOpReadVariableOpconv2d_54/bias*
_output_shapes
:*
dtype0

conv2d_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_55/kernel
}
$conv2d_55/kernel/Read/ReadVariableOpReadVariableOpconv2d_55/kernel*&
_output_shapes
:*
dtype0
t
conv2d_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_55/bias
m
"conv2d_55/bias/Read/ReadVariableOpReadVariableOpconv2d_55/bias*
_output_shapes
:*
dtype0

conv2d_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_56/kernel
}
$conv2d_56/kernel/Read/ReadVariableOpReadVariableOpconv2d_56/kernel*&
_output_shapes
:*
dtype0
t
conv2d_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_56/bias
m
"conv2d_56/bias/Read/ReadVariableOpReadVariableOpconv2d_56/bias*
_output_shapes
:*
dtype0

conv2d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_57/kernel
}
$conv2d_57/kernel/Read/ReadVariableOpReadVariableOpconv2d_57/kernel*&
_output_shapes
:*
dtype0
t
conv2d_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_57/bias
m
"conv2d_57/bias/Read/ReadVariableOpReadVariableOpconv2d_57/bias*
_output_shapes
:*
dtype0

conv2d_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_58/kernel
}
$conv2d_58/kernel/Read/ReadVariableOpReadVariableOpconv2d_58/kernel*&
_output_shapes
:*
dtype0
t
conv2d_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_58/bias
m
"conv2d_58/bias/Read/ReadVariableOpReadVariableOpconv2d_58/bias*
_output_shapes
:*
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

Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *'
shared_nameAdam/dense_17/kernel/m

*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m* 
_output_shapes
:
 *
dtype0

Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/m
z
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes	
:*
dtype0

Adam/z_mean/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/z_mean/kernel/m
~
(Adam/z_mean/kernel/m/Read/ReadVariableOpReadVariableOpAdam/z_mean/kernel/m*
_output_shapes
:	*
dtype0
|
Adam/z_mean/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/z_mean/bias/m
u
&Adam/z_mean/bias/m/Read/ReadVariableOpReadVariableOpAdam/z_mean/bias/m*
_output_shapes
:*
dtype0

Adam/z_log_var/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/z_log_var/kernel/m

+Adam/z_log_var/kernel/m/Read/ReadVariableOpReadVariableOpAdam/z_log_var/kernel/m*
_output_shapes
:	*
dtype0

Adam/z_log_var/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/z_log_var/bias/m
{
)Adam/z_log_var/bias/m/Read/ReadVariableOpReadVariableOpAdam/z_log_var/bias/m*
_output_shapes
:*
dtype0

Adam/dense_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_18/kernel/m

*Adam/dense_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/m*
_output_shapes
:	*
dtype0

Adam/dense_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_18/bias/m
z
(Adam/dense_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_51/kernel/m

+Adam/conv2d_51/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_51/bias/m
{
)Adam/conv2d_51/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_52/kernel/m

+Adam/conv2d_52/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_52/bias/m
{
)Adam/conv2d_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_53/kernel/m

+Adam/conv2d_53/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_53/bias/m
{
)Adam/conv2d_53/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_54/kernel/m

+Adam/conv2d_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/kernel/m*&
_output_shapes
:@*
dtype0

Adam/conv2d_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_54/bias/m
{
)Adam/conv2d_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_55/kernel/m

+Adam/conv2d_55/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_55/bias/m
{
)Adam/conv2d_55/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_56/kernel/m

+Adam/conv2d_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_56/bias/m
{
)Adam/conv2d_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_57/kernel/m

+Adam/conv2d_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_57/bias/m
{
)Adam/conv2d_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_58/kernel/m

+Adam/conv2d_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_58/bias/m
{
)Adam/conv2d_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/bias/m*
_output_shapes
:*
dtype0

Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *'
shared_nameAdam/dense_17/kernel/v

*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v* 
_output_shapes
:
 *
dtype0

Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/v
z
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes	
:*
dtype0

Adam/z_mean/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/z_mean/kernel/v
~
(Adam/z_mean/kernel/v/Read/ReadVariableOpReadVariableOpAdam/z_mean/kernel/v*
_output_shapes
:	*
dtype0
|
Adam/z_mean/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/z_mean/bias/v
u
&Adam/z_mean/bias/v/Read/ReadVariableOpReadVariableOpAdam/z_mean/bias/v*
_output_shapes
:*
dtype0

Adam/z_log_var/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/z_log_var/kernel/v

+Adam/z_log_var/kernel/v/Read/ReadVariableOpReadVariableOpAdam/z_log_var/kernel/v*
_output_shapes
:	*
dtype0

Adam/z_log_var/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/z_log_var/bias/v
{
)Adam/z_log_var/bias/v/Read/ReadVariableOpReadVariableOpAdam/z_log_var/bias/v*
_output_shapes
:*
dtype0

Adam/dense_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_18/kernel/v

*Adam/dense_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/v*
_output_shapes
:	*
dtype0

Adam/dense_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_18/bias/v
z
(Adam/dense_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_51/kernel/v

+Adam/conv2d_51/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_51/bias/v
{
)Adam/conv2d_51/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_52/kernel/v

+Adam/conv2d_52/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_52/bias/v
{
)Adam/conv2d_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_53/kernel/v

+Adam/conv2d_53/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_53/bias/v
{
)Adam/conv2d_53/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_54/kernel/v

+Adam/conv2d_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/kernel/v*&
_output_shapes
:@*
dtype0

Adam/conv2d_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_54/bias/v
{
)Adam/conv2d_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_55/kernel/v

+Adam/conv2d_55/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_55/bias/v
{
)Adam/conv2d_55/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_56/kernel/v

+Adam/conv2d_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_56/bias/v
{
)Adam/conv2d_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_57/kernel/v

+Adam/conv2d_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_57/bias/v
{
)Adam/conv2d_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_58/kernel/v

+Adam/conv2d_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_58/bias/v
{
)Adam/conv2d_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/bias/v*
_output_shapes
:*
dtype0
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?

NoOpNoOp
ј
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*А
valueЅBЁ B
З
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer_with_weights-4
layer-17
layer-18
layer_with_weights-5
layer-19
layer-20
layer-21
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
 
д
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
 layer-3
!	variables
"regularization_losses
#trainable_variables
$	keras_api
R
%	variables
&regularization_losses
'trainable_variables
(	keras_api
 
R
)	variables
*regularization_losses
+trainable_variables
,	keras_api
h

-kernel
.bias
/	variables
0regularization_losses
1trainable_variables
2	keras_api
h

3kernel
4bias
5	variables
6regularization_losses
7trainable_variables
8	keras_api
h

9kernel
:bias
;	variables
<regularization_losses
=trainable_variables
>	keras_api

?	keras_api

@	keras_api

A	keras_api

B	keras_api

C	keras_api

D	keras_api

E	keras_api

F	keras_api
R
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
h

Kkernel
Lbias
M	variables
Nregularization_losses
Otrainable_variables
P	keras_api
R
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
ж
Ulayer-0
Vlayer_with_weights-0
Vlayer-1
Wlayer-2
Xlayer_with_weights-1
Xlayer-3
Ylayer-4
Zlayer_with_weights-2
Zlayer-5
[layer-6
\layer_with_weights-3
\layer-7
]layer-8
^layer_with_weights-4
^layer-9
_	variables
`regularization_losses
atrainable_variables
b	keras_api
R
c	variables
dregularization_losses
etrainable_variables
f	keras_api
R
g	variables
hregularization_losses
itrainable_variables
j	keras_api
 
kiter

lbeta_1

mbeta_2
	ndecay
olearning_rate-mФ.mХ3mЦ4mЧ9mШ:mЩKmЪLmЫpmЬqmЭrmЮsmЯtmаumбvmвwmгxmдymеzmж{mз|mи}mй~mкmл-vм.vн3vо4vп9vр:vсKvтLvуpvфqvхrvцsvчtvшuvщvvъwvыxvьyvэzvю{vя|v№}vё~vђvѓ
Ж
p0
q1
r2
s3
t4
u5
-6
.7
38
49
910
:11
K12
L13
v14
w15
x16
y17
z18
{19
|20
}21
~22
23
 
Ж
p0
q1
r2
s3
t4
u5
-6
.7
38
49
910
:11
K12
L13
v14
w15
x16
y17
z18
{19
|20
}21
~22
23
В
	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
regularization_losses
trainable_variables
 
l

pkernel
qbias
	variables
regularization_losses
trainable_variables
	keras_api
l

rkernel
sbias
	variables
regularization_losses
trainable_variables
	keras_api
l

tkernel
ubias
	variables
regularization_losses
trainable_variables
	keras_api
V
	variables
regularization_losses
trainable_variables
	keras_api
*
p0
q1
r2
s3
t4
u5
 
*
p0
q1
r2
s3
t4
u5
В
!	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
"regularization_losses
#trainable_variables
 
 
 
В
%	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
&regularization_losses
'trainable_variables
 
 
 
В
)	variables
layer_metrics
 non_trainable_variables
Ёlayers
Ђmetrics
 Ѓlayer_regularization_losses
*regularization_losses
+trainable_variables
[Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_17/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

-0
.1
 

-0
.1
В
/	variables
Єlayer_metrics
Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
0regularization_losses
1trainable_variables
YW
VARIABLE_VALUEz_mean/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEz_mean/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41
 

30
41
В
5	variables
Љlayer_metrics
Њnon_trainable_variables
Ћlayers
Ќmetrics
 ­layer_regularization_losses
6regularization_losses
7trainable_variables
\Z
VARIABLE_VALUEz_log_var/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEz_log_var/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1
 

90
:1
В
;	variables
Ўlayer_metrics
Џnon_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
<regularization_losses
=trainable_variables
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
В
G	variables
Гlayer_metrics
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Hregularization_losses
Itrainable_variables
[Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_18/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

K0
L1
 

K0
L1
В
M	variables
Иlayer_metrics
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Nregularization_losses
Otrainable_variables
 
 
 
В
Q	variables
Нlayer_metrics
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Rregularization_losses
Strainable_variables
V
Т	variables
Уregularization_losses
Фtrainable_variables
Х	keras_api
l

vkernel
wbias
Ц	variables
Чregularization_losses
Шtrainable_variables
Щ	keras_api
V
Ъ	variables
Ыregularization_losses
Ьtrainable_variables
Э	keras_api
l

xkernel
ybias
Ю	variables
Яregularization_losses
аtrainable_variables
б	keras_api
V
в	variables
гregularization_losses
дtrainable_variables
е	keras_api
l

zkernel
{bias
ж	variables
зregularization_losses
иtrainable_variables
й	keras_api
V
к	variables
лregularization_losses
мtrainable_variables
н	keras_api
l

|kernel
}bias
о	variables
пregularization_losses
рtrainable_variables
с	keras_api
V
т	variables
уregularization_losses
фtrainable_variables
х	keras_api
l

~kernel
bias
ц	variables
чregularization_losses
шtrainable_variables
щ	keras_api
F
v0
w1
x2
y3
z4
{5
|6
}7
~8
9
 
F
v0
w1
x2
y3
z4
{5
|6
}7
~8
9
В
_	variables
ъlayer_metrics
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
`regularization_losses
atrainable_variables
 
 
 
В
c	variables
яlayer_metrics
№non_trainable_variables
ёlayers
ђmetrics
 ѓlayer_regularization_losses
dregularization_losses
etrainable_variables
 
 
 
В
g	variables
єlayer_metrics
ѕnon_trainable_variables
іlayers
їmetrics
 јlayer_regularization_losses
hregularization_losses
itrainable_variables
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
LJ
VARIABLE_VALUEconv2d_51/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_51/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_52/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_52/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_53/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_53/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEconv2d_54/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_54/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEconv2d_55/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_55/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEconv2d_56/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_56/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEconv2d_57/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_57/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEconv2d_58/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_58/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE
 
 
І
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
14
15
16
17
18
19
20
21

љ0
 

p0
q1
 

p0
q1
Е
	variables
њlayer_metrics
ћnon_trainable_variables
ќlayers
§metrics
 ўlayer_regularization_losses
regularization_losses
trainable_variables

r0
s1
 

r0
s1
Е
	variables
џlayer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
regularization_losses
trainable_variables

t0
u1
 

t0
u1
Е
	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
regularization_losses
trainable_variables
 
 
 
Е
	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
regularization_losses
trainable_variables
 
 

0
1
2
 3
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
 
 
 
 
Е
Т	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
Уregularization_losses
Фtrainable_variables

v0
w1
 

v0
w1
Е
Ц	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
Чregularization_losses
Шtrainable_variables
 
 
 
Е
Ъ	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
Ыregularization_losses
Ьtrainable_variables

x0
y1
 

x0
y1
Е
Ю	variables
layer_metrics
non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Яregularization_losses
аtrainable_variables
 
 
 
Е
в	variables
Ђlayer_metrics
Ѓnon_trainable_variables
Єlayers
Ѕmetrics
 Іlayer_regularization_losses
гregularization_losses
дtrainable_variables

z0
{1
 

z0
{1
Е
ж	variables
Їlayer_metrics
Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
зregularization_losses
иtrainable_variables
 
 
 
Е
к	variables
Ќlayer_metrics
­non_trainable_variables
Ўlayers
Џmetrics
 Аlayer_regularization_losses
лregularization_losses
мtrainable_variables

|0
}1
 

|0
}1
Е
о	variables
Бlayer_metrics
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
пregularization_losses
рtrainable_variables
 
 
 
Е
т	variables
Жlayer_metrics
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
уregularization_losses
фtrainable_variables

~0
1
 

~0
1
Е
ц	variables
Лlayer_metrics
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
чregularization_losses
шtrainable_variables
 
 
F
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
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

Рtotal

Сcount
Т	variables
У	keras_api
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Р0
С1

Т	variables
~|
VARIABLE_VALUEAdam/dense_17/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_17/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/z_mean/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/z_mean/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/z_log_var/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/z_log_var/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_18/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_18/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_51/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_51/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_52/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_52/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_53/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_53/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_54/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_54/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_55/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_55/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_56/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_56/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_57/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_57/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_58/kernel/mCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_58/bias/mCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_17/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_17/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/z_mean/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/z_mean/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/z_log_var/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/z_log_var/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_18/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_18/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_51/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_51/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_52/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_52/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_53/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_53/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_54/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_54/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_55/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_55/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_56/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_56/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_57/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_57/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_58/kernel/vCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_58/bias/vCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_19Placeholder*1
_output_shapes
:џџџџџџџџџ*
dtype0*&
shape:џџџџџџџџџ
{
serving_default_input_20Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
 
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_19serving_default_input_20conv2d_51/kernelconv2d_51/biasconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasdense_17/kerneldense_17/biasz_mean/kernelz_mean/biasz_log_var/kernelz_log_var/biasConstdense_18/kerneldense_18/biasconv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasconv2d_56/kernelconv2d_56/biasconv2d_57/kernelconv2d_57/biasconv2d_58/kernelconv2d_58/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_56932
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ч
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOp!z_mean/kernel/Read/ReadVariableOpz_mean/bias/Read/ReadVariableOp$z_log_var/kernel/Read/ReadVariableOp"z_log_var/bias/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp$conv2d_51/kernel/Read/ReadVariableOp"conv2d_51/bias/Read/ReadVariableOp$conv2d_52/kernel/Read/ReadVariableOp"conv2d_52/bias/Read/ReadVariableOp$conv2d_53/kernel/Read/ReadVariableOp"conv2d_53/bias/Read/ReadVariableOp$conv2d_54/kernel/Read/ReadVariableOp"conv2d_54/bias/Read/ReadVariableOp$conv2d_55/kernel/Read/ReadVariableOp"conv2d_55/bias/Read/ReadVariableOp$conv2d_56/kernel/Read/ReadVariableOp"conv2d_56/bias/Read/ReadVariableOp$conv2d_57/kernel/Read/ReadVariableOp"conv2d_57/bias/Read/ReadVariableOp$conv2d_58/kernel/Read/ReadVariableOp"conv2d_58/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOp(Adam/z_mean/kernel/m/Read/ReadVariableOp&Adam/z_mean/bias/m/Read/ReadVariableOp+Adam/z_log_var/kernel/m/Read/ReadVariableOp)Adam/z_log_var/bias/m/Read/ReadVariableOp*Adam/dense_18/kernel/m/Read/ReadVariableOp(Adam/dense_18/bias/m/Read/ReadVariableOp+Adam/conv2d_51/kernel/m/Read/ReadVariableOp)Adam/conv2d_51/bias/m/Read/ReadVariableOp+Adam/conv2d_52/kernel/m/Read/ReadVariableOp)Adam/conv2d_52/bias/m/Read/ReadVariableOp+Adam/conv2d_53/kernel/m/Read/ReadVariableOp)Adam/conv2d_53/bias/m/Read/ReadVariableOp+Adam/conv2d_54/kernel/m/Read/ReadVariableOp)Adam/conv2d_54/bias/m/Read/ReadVariableOp+Adam/conv2d_55/kernel/m/Read/ReadVariableOp)Adam/conv2d_55/bias/m/Read/ReadVariableOp+Adam/conv2d_56/kernel/m/Read/ReadVariableOp)Adam/conv2d_56/bias/m/Read/ReadVariableOp+Adam/conv2d_57/kernel/m/Read/ReadVariableOp)Adam/conv2d_57/bias/m/Read/ReadVariableOp+Adam/conv2d_58/kernel/m/Read/ReadVariableOp)Adam/conv2d_58/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOp(Adam/z_mean/kernel/v/Read/ReadVariableOp&Adam/z_mean/bias/v/Read/ReadVariableOp+Adam/z_log_var/kernel/v/Read/ReadVariableOp)Adam/z_log_var/bias/v/Read/ReadVariableOp*Adam/dense_18/kernel/v/Read/ReadVariableOp(Adam/dense_18/bias/v/Read/ReadVariableOp+Adam/conv2d_51/kernel/v/Read/ReadVariableOp)Adam/conv2d_51/bias/v/Read/ReadVariableOp+Adam/conv2d_52/kernel/v/Read/ReadVariableOp)Adam/conv2d_52/bias/v/Read/ReadVariableOp+Adam/conv2d_53/kernel/v/Read/ReadVariableOp)Adam/conv2d_53/bias/v/Read/ReadVariableOp+Adam/conv2d_54/kernel/v/Read/ReadVariableOp)Adam/conv2d_54/bias/v/Read/ReadVariableOp+Adam/conv2d_55/kernel/v/Read/ReadVariableOp)Adam/conv2d_55/bias/v/Read/ReadVariableOp+Adam/conv2d_56/kernel/v/Read/ReadVariableOp)Adam/conv2d_56/bias/v/Read/ReadVariableOp+Adam/conv2d_57/kernel/v/Read/ReadVariableOp)Adam/conv2d_57/bias/v/Read/ReadVariableOp+Adam/conv2d_58/kernel/v/Read/ReadVariableOp)Adam/conv2d_58/bias/v/Read/ReadVariableOpConst_1*\
TinU
S2Q	*
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
GPU2*0J 8 *'
f"R 
__inference__traced_save_58341
Д
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_17/kerneldense_17/biasz_mean/kernelz_mean/biasz_log_var/kernelz_log_var/biasdense_18/kerneldense_18/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv2d_51/kernelconv2d_51/biasconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasconv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasconv2d_56/kernelconv2d_56/biasconv2d_57/kernelconv2d_57/biasconv2d_58/kernelconv2d_58/biastotalcountAdam/dense_17/kernel/mAdam/dense_17/bias/mAdam/z_mean/kernel/mAdam/z_mean/bias/mAdam/z_log_var/kernel/mAdam/z_log_var/bias/mAdam/dense_18/kernel/mAdam/dense_18/bias/mAdam/conv2d_51/kernel/mAdam/conv2d_51/bias/mAdam/conv2d_52/kernel/mAdam/conv2d_52/bias/mAdam/conv2d_53/kernel/mAdam/conv2d_53/bias/mAdam/conv2d_54/kernel/mAdam/conv2d_54/bias/mAdam/conv2d_55/kernel/mAdam/conv2d_55/bias/mAdam/conv2d_56/kernel/mAdam/conv2d_56/bias/mAdam/conv2d_57/kernel/mAdam/conv2d_57/bias/mAdam/conv2d_58/kernel/mAdam/conv2d_58/bias/mAdam/dense_17/kernel/vAdam/dense_17/bias/vAdam/z_mean/kernel/vAdam/z_mean/bias/vAdam/z_log_var/kernel/vAdam/z_log_var/bias/vAdam/dense_18/kernel/vAdam/dense_18/bias/vAdam/conv2d_51/kernel/vAdam/conv2d_51/bias/vAdam/conv2d_52/kernel/vAdam/conv2d_52/bias/vAdam/conv2d_53/kernel/vAdam/conv2d_53/bias/vAdam/conv2d_54/kernel/vAdam/conv2d_54/bias/vAdam/conv2d_55/kernel/vAdam/conv2d_55/bias/vAdam/conv2d_56/kernel/vAdam/conv2d_56/bias/vAdam/conv2d_57/kernel/vAdam/conv2d_57/bias/vAdam/conv2d_58/kernel/vAdam/conv2d_58/bias/v*[
TinT
R2P*
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
!__inference__traced_restore_58588Љё
ч
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_57969

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
С
t
H__inference_concatenate_6_layer_call_and_return_conditional_losses_57512
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ 2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ :џџџџџџџџџ:R N
(
_output_shapes
:џџџџџџџџџ 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
і
T
(__inference_lambda_4_layer_call_fn_57881
inputs_0
inputs_1
identityР
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
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
GPU2*0J 8 *L
fGRE
C__inference_lambda_4_layer_call_and_return_conditional_losses_564642
PartitionedCall[
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
М
`
D__inference_flatten_6_layer_call_and_return_conditional_losses_57500

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
с
}
(__inference_dense_17_layer_call_fn_57537

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_562082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ч
~
)__inference_conv2d_54_layer_call_fn_57999

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_558342
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
А
L
0__inference_up_sampling2d_34_layer_call_fn_55818

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_558122
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ф!
Э
H__inference_sequential_14_layer_call_and_return_conditional_losses_57460

inputs,
(conv2d_51_conv2d_readvariableop_resource-
)conv2d_51_biasadd_readvariableop_resource,
(conv2d_52_conv2d_readvariableop_resource-
)conv2d_52_biasadd_readvariableop_resource,
(conv2d_53_conv2d_readvariableop_resource-
)conv2d_53_biasadd_readvariableop_resource
identityЂ conv2d_51/BiasAdd/ReadVariableOpЂconv2d_51/Conv2D/ReadVariableOpЂ conv2d_52/BiasAdd/ReadVariableOpЂconv2d_52/Conv2D/ReadVariableOpЂ conv2d_53/BiasAdd/ReadVariableOpЂconv2d_53/Conv2D/ReadVariableOpГ
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_51/Conv2D/ReadVariableOpС
conv2d_51/Conv2DConv2Dinputs'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2
conv2d_51/Conv2DЊ
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_51/BiasAdd/ReadVariableOpА
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
conv2d_51/BiasAdd~
conv2d_51/ReluReluconv2d_51/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
conv2d_51/ReluГ
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_52/Conv2D/ReadVariableOpз
conv2d_52/Conv2DConv2Dconv2d_51/Relu:activations:0'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
conv2d_52/Conv2DЊ
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_52/BiasAdd/ReadVariableOpА
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_52/BiasAdd~
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_52/ReluГ
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_53/Conv2D/ReadVariableOpз
conv2d_53/Conv2DConv2Dconv2d_52/Relu:activations:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_53/Conv2DЊ
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_53/BiasAdd/ReadVariableOpА
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_53/BiasAdd~
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_53/Relu
dropout_9/IdentityIdentityconv2d_53/Relu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ2
dropout_9/IdentityЦ
IdentityIdentitydropout_9/Identity:output:0!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:џџџџџџџџџ::::::2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Й
r
H__inference_concatenate_6_layer_call_and_return_conditional_losses_56189

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ 2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ :џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ю

н
D__inference_conv2d_53_layer_call_and_return_conditional_losses_55581

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
ћ-
э
H__inference_sequential_15_layer_call_and_return_conditional_losses_56093

inputs
conv2d_54_56063
conv2d_54_56065
conv2d_55_56069
conv2d_55_56071
conv2d_56_56075
conv2d_56_56077
conv2d_57_56081
conv2d_57_56083
conv2d_58_56087
conv2d_58_56089
identityЂ!conv2d_54/StatefulPartitionedCallЂ!conv2d_55/StatefulPartitionedCallЂ!conv2d_56/StatefulPartitionedCallЂ!conv2d_57/StatefulPartitionedCallЂ!conv2d_58/StatefulPartitionedCall
 up_sampling2d_30/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_30_layer_call_and_return_conditional_losses_557362"
 up_sampling2d_30/PartitionedCallж
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_30/PartitionedCall:output:0conv2d_54_56063conv2d_54_56065*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_558342#
!conv2d_54/StatefulPartitionedCallЌ
 up_sampling2d_31/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_31_layer_call_and_return_conditional_losses_557552"
 up_sampling2d_31/PartitionedCallж
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_31/PartitionedCall:output:0conv2d_55_56069conv2d_55_56071*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_558622#
!conv2d_55/StatefulPartitionedCallЌ
 up_sampling2d_32/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_557742"
 up_sampling2d_32/PartitionedCallж
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_32/PartitionedCall:output:0conv2d_56_56075conv2d_56_56077*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_558902#
!conv2d_56/StatefulPartitionedCallЌ
 up_sampling2d_33/PartitionedCallPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_557932"
 up_sampling2d_33/PartitionedCallж
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_33/PartitionedCall:output:0conv2d_57_56081conv2d_57_56083*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_559182#
!conv2d_57/StatefulPartitionedCallЌ
 up_sampling2d_34/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_558122"
 up_sampling2d_34/PartitionedCallж
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_34/PartitionedCall:output:0conv2d_58_56087conv2d_58_56089*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_559462#
!conv2d_58/StatefulPartitionedCallЬ
IdentityIdentity*conv2d_58/StatefulPartitionedCall:output:0"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ@::::::::::2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

О
-__inference_sequential_14_layer_call_fn_57494

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_557082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:џџџџџџџџџ::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
	
м
C__inference_dense_17_layer_call_and_return_conditional_losses_56208

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
 *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

m
C__inference_lambda_4_layer_call_and_return_conditional_losses_56447

inputs
inputs_1
identityS
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
add/x]
addAddV2add/x:output:0inputs*
T0*'
_output_shapes
:џџџџџџџџџ2
addV
SquareSquareinputs_1*
T0*'
_output_shapes
:џџџџџџџџџ2
SquareX
subSubadd:z:0
Square:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
subM
ExpExpinputs_1*
T0*'
_output_shapes
:џџџџџџџџџ2
ExpY
sub_1Subsub:z:0Exp:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sub_1S
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   П2
mul/x^
mulMulmul/x:output:0	sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
Sum/reduction_indicesh
SumSummul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
SumX
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstS
MeanMeanSum:output:0Const:output:0*
T0*
_output_shapes
: 2
MeanP
IdentityIdentityMean:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџ:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Н
t
H__inference_concatenate_7_layer_call_and_return_conditional_losses_57582
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
К
н
D__inference_conv2d_56_layer_call_and_return_conditional_losses_55890

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
М
н
D__inference_conv2d_58_layer_call_and_return_conditional_losses_58070

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAdd{
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
SigmoidЊ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
А
L
0__inference_up_sampling2d_31_layer_call_fn_55761

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_31_layer_call_and_return_conditional_losses_557552
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
А
L
0__inference_up_sampling2d_33_layer_call_fn_55799

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_557932
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Иn

H__inference_sequential_15_layer_call_and_return_conditional_losses_57785

inputs,
(conv2d_54_conv2d_readvariableop_resource-
)conv2d_54_biasadd_readvariableop_resource,
(conv2d_55_conv2d_readvariableop_resource-
)conv2d_55_biasadd_readvariableop_resource,
(conv2d_56_conv2d_readvariableop_resource-
)conv2d_56_biasadd_readvariableop_resource,
(conv2d_57_conv2d_readvariableop_resource-
)conv2d_57_biasadd_readvariableop_resource,
(conv2d_58_conv2d_readvariableop_resource-
)conv2d_58_biasadd_readvariableop_resource
identityЂ conv2d_54/BiasAdd/ReadVariableOpЂconv2d_54/Conv2D/ReadVariableOpЂ conv2d_55/BiasAdd/ReadVariableOpЂconv2d_55/Conv2D/ReadVariableOpЂ conv2d_56/BiasAdd/ReadVariableOpЂconv2d_56/Conv2D/ReadVariableOpЂ conv2d_57/BiasAdd/ReadVariableOpЂconv2d_57/Conv2D/ReadVariableOpЂ conv2d_58/BiasAdd/ReadVariableOpЂconv2d_58/Conv2D/ReadVariableOpf
up_sampling2d_30/ShapeShapeinputs*
T0*
_output_shapes
:2
up_sampling2d_30/Shape
$up_sampling2d_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_30/strided_slice/stack
&up_sampling2d_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_30/strided_slice/stack_1
&up_sampling2d_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_30/strided_slice/stack_2Д
up_sampling2d_30/strided_sliceStridedSliceup_sampling2d_30/Shape:output:0-up_sampling2d_30/strided_slice/stack:output:0/up_sampling2d_30/strided_slice/stack_1:output:0/up_sampling2d_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_30/strided_slice
up_sampling2d_30/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_30/ConstЂ
up_sampling2d_30/mulMul'up_sampling2d_30/strided_slice:output:0up_sampling2d_30/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_30/mulэ
-up_sampling2d_30/resize/ResizeNearestNeighborResizeNearestNeighborinputsup_sampling2d_30/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
half_pixel_centers(2/
-up_sampling2d_30/resize/ResizeNearestNeighborГ
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_54/Conv2D/ReadVariableOpљ
conv2d_54/Conv2DConv2D>up_sampling2d_30/resize/ResizeNearestNeighbor:resized_images:0'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_54/Conv2DЊ
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_54/BiasAdd/ReadVariableOpА
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_54/BiasAdd~
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_54/Relu|
up_sampling2d_31/ShapeShapeconv2d_54/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_31/Shape
$up_sampling2d_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_31/strided_slice/stack
&up_sampling2d_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_31/strided_slice/stack_1
&up_sampling2d_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_31/strided_slice/stack_2Д
up_sampling2d_31/strided_sliceStridedSliceup_sampling2d_31/Shape:output:0-up_sampling2d_31/strided_slice/stack:output:0/up_sampling2d_31/strided_slice/stack_1:output:0/up_sampling2d_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_31/strided_slice
up_sampling2d_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_31/ConstЂ
up_sampling2d_31/mulMul'up_sampling2d_31/strided_slice:output:0up_sampling2d_31/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_31/mul
-up_sampling2d_31/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_54/Relu:activations:0up_sampling2d_31/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(2/
-up_sampling2d_31/resize/ResizeNearestNeighborГ
conv2d_55/Conv2D/ReadVariableOpReadVariableOp(conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_55/Conv2D/ReadVariableOpљ
conv2d_55/Conv2DConv2D>up_sampling2d_31/resize/ResizeNearestNeighbor:resized_images:0'conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_55/Conv2DЊ
 conv2d_55/BiasAdd/ReadVariableOpReadVariableOp)conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_55/BiasAdd/ReadVariableOpА
conv2d_55/BiasAddBiasAddconv2d_55/Conv2D:output:0(conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_55/BiasAdd~
conv2d_55/ReluReluconv2d_55/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_55/Relu|
up_sampling2d_32/ShapeShapeconv2d_55/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_32/Shape
$up_sampling2d_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_32/strided_slice/stack
&up_sampling2d_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_32/strided_slice/stack_1
&up_sampling2d_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_32/strided_slice/stack_2Д
up_sampling2d_32/strided_sliceStridedSliceup_sampling2d_32/Shape:output:0-up_sampling2d_32/strided_slice/stack:output:0/up_sampling2d_32/strided_slice/stack_1:output:0/up_sampling2d_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_32/strided_slice
up_sampling2d_32/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_32/ConstЂ
up_sampling2d_32/mulMul'up_sampling2d_32/strided_slice:output:0up_sampling2d_32/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_32/mul
-up_sampling2d_32/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_55/Relu:activations:0up_sampling2d_32/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
half_pixel_centers(2/
-up_sampling2d_32/resize/ResizeNearestNeighborГ
conv2d_56/Conv2D/ReadVariableOpReadVariableOp(conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_56/Conv2D/ReadVariableOpљ
conv2d_56/Conv2DConv2D>up_sampling2d_32/resize/ResizeNearestNeighbor:resized_images:0'conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
conv2d_56/Conv2DЊ
 conv2d_56/BiasAdd/ReadVariableOpReadVariableOp)conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_56/BiasAdd/ReadVariableOpА
conv2d_56/BiasAddBiasAddconv2d_56/Conv2D:output:0(conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_56/BiasAdd~
conv2d_56/ReluReluconv2d_56/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_56/Relu|
up_sampling2d_33/ShapeShapeconv2d_56/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_33/Shape
$up_sampling2d_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_33/strided_slice/stack
&up_sampling2d_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_33/strided_slice/stack_1
&up_sampling2d_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_33/strided_slice/stack_2Д
up_sampling2d_33/strided_sliceStridedSliceup_sampling2d_33/Shape:output:0-up_sampling2d_33/strided_slice/stack:output:0/up_sampling2d_33/strided_slice/stack_1:output:0/up_sampling2d_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_33/strided_slice
up_sampling2d_33/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_33/ConstЂ
up_sampling2d_33/mulMul'up_sampling2d_33/strided_slice:output:0up_sampling2d_33/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_33/mul
-up_sampling2d_33/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_56/Relu:activations:0up_sampling2d_33/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
half_pixel_centers(2/
-up_sampling2d_33/resize/ResizeNearestNeighborГ
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_57/Conv2D/ReadVariableOpљ
conv2d_57/Conv2DConv2D>up_sampling2d_33/resize/ResizeNearestNeighbor:resized_images:0'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2
conv2d_57/Conv2DЊ
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_57/BiasAdd/ReadVariableOpА
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
conv2d_57/BiasAdd~
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
conv2d_57/Relu|
up_sampling2d_34/ShapeShapeconv2d_57/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_34/Shape
$up_sampling2d_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_34/strided_slice/stack
&up_sampling2d_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_34/strided_slice/stack_1
&up_sampling2d_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_34/strided_slice/stack_2Д
up_sampling2d_34/strided_sliceStridedSliceup_sampling2d_34/Shape:output:0-up_sampling2d_34/strided_slice/stack:output:0/up_sampling2d_34/strided_slice/stack_1:output:0/up_sampling2d_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_34/strided_slice
up_sampling2d_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_34/ConstЂ
up_sampling2d_34/mulMul'up_sampling2d_34/strided_slice:output:0up_sampling2d_34/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_34/mul
-up_sampling2d_34/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_57/Relu:activations:0up_sampling2d_34/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(2/
-up_sampling2d_34/resize/ResizeNearestNeighborГ
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_58/Conv2D/ReadVariableOpћ
conv2d_58/Conv2DConv2D>up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:0'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_58/Conv2DЊ
 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_58/BiasAdd/ReadVariableOpВ
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ2
conv2d_58/BiasAdd
conv2d_58/SigmoidSigmoidconv2d_58/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ2
conv2d_58/SigmoidЬ
IdentityIdentityconv2d_58/Sigmoid:y:0!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^conv2d_55/BiasAdd/ReadVariableOp ^conv2d_55/Conv2D/ReadVariableOp!^conv2d_56/BiasAdd/ReadVariableOp ^conv2d_56/Conv2D/ReadVariableOp!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ@::::::::::2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 conv2d_55/BiasAdd/ReadVariableOp conv2d_55/BiasAdd/ReadVariableOp2B
conv2d_55/Conv2D/ReadVariableOpconv2d_55/Conv2D/ReadVariableOp2D
 conv2d_56/BiasAdd/ReadVariableOp conv2d_56/BiasAdd/ReadVariableOp2B
conv2d_56/Conv2D/ReadVariableOpconv2d_56/Conv2D/ReadVariableOp2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Е
E
)__inference_dropout_9_layer_call_fn_57979

inputs
identityЭ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_556142
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_30_layer_call_and_return_conditional_losses_55736

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ю
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulе
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(2
resize/ResizeNearestNeighborЄ
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
к
A__inference_z_mean_layer_call_and_return_conditional_losses_57547

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ѓ	
м
C__inference_dense_18_layer_call_and_return_conditional_losses_57599

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Ы 
__inference__traced_save_58341
file_prefix.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop,
(savev2_z_mean_kernel_read_readvariableop*
&savev2_z_mean_bias_read_readvariableop/
+savev2_z_log_var_kernel_read_readvariableop-
)savev2_z_log_var_bias_read_readvariableop.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop/
+savev2_conv2d_51_kernel_read_readvariableop-
)savev2_conv2d_51_bias_read_readvariableop/
+savev2_conv2d_52_kernel_read_readvariableop-
)savev2_conv2d_52_bias_read_readvariableop/
+savev2_conv2d_53_kernel_read_readvariableop-
)savev2_conv2d_53_bias_read_readvariableop/
+savev2_conv2d_54_kernel_read_readvariableop-
)savev2_conv2d_54_bias_read_readvariableop/
+savev2_conv2d_55_kernel_read_readvariableop-
)savev2_conv2d_55_bias_read_readvariableop/
+savev2_conv2d_56_kernel_read_readvariableop-
)savev2_conv2d_56_bias_read_readvariableop/
+savev2_conv2d_57_kernel_read_readvariableop-
)savev2_conv2d_57_bias_read_readvariableop/
+savev2_conv2d_58_kernel_read_readvariableop-
)savev2_conv2d_58_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableop3
/savev2_adam_z_mean_kernel_m_read_readvariableop1
-savev2_adam_z_mean_bias_m_read_readvariableop6
2savev2_adam_z_log_var_kernel_m_read_readvariableop4
0savev2_adam_z_log_var_bias_m_read_readvariableop5
1savev2_adam_dense_18_kernel_m_read_readvariableop3
/savev2_adam_dense_18_bias_m_read_readvariableop6
2savev2_adam_conv2d_51_kernel_m_read_readvariableop4
0savev2_adam_conv2d_51_bias_m_read_readvariableop6
2savev2_adam_conv2d_52_kernel_m_read_readvariableop4
0savev2_adam_conv2d_52_bias_m_read_readvariableop6
2savev2_adam_conv2d_53_kernel_m_read_readvariableop4
0savev2_adam_conv2d_53_bias_m_read_readvariableop6
2savev2_adam_conv2d_54_kernel_m_read_readvariableop4
0savev2_adam_conv2d_54_bias_m_read_readvariableop6
2savev2_adam_conv2d_55_kernel_m_read_readvariableop4
0savev2_adam_conv2d_55_bias_m_read_readvariableop6
2savev2_adam_conv2d_56_kernel_m_read_readvariableop4
0savev2_adam_conv2d_56_bias_m_read_readvariableop6
2savev2_adam_conv2d_57_kernel_m_read_readvariableop4
0savev2_adam_conv2d_57_bias_m_read_readvariableop6
2savev2_adam_conv2d_58_kernel_m_read_readvariableop4
0savev2_adam_conv2d_58_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableop3
/savev2_adam_z_mean_kernel_v_read_readvariableop1
-savev2_adam_z_mean_bias_v_read_readvariableop6
2savev2_adam_z_log_var_kernel_v_read_readvariableop4
0savev2_adam_z_log_var_bias_v_read_readvariableop5
1savev2_adam_dense_18_kernel_v_read_readvariableop3
/savev2_adam_dense_18_bias_v_read_readvariableop6
2savev2_adam_conv2d_51_kernel_v_read_readvariableop4
0savev2_adam_conv2d_51_bias_v_read_readvariableop6
2savev2_adam_conv2d_52_kernel_v_read_readvariableop4
0savev2_adam_conv2d_52_bias_v_read_readvariableop6
2savev2_adam_conv2d_53_kernel_v_read_readvariableop4
0savev2_adam_conv2d_53_bias_v_read_readvariableop6
2savev2_adam_conv2d_54_kernel_v_read_readvariableop4
0savev2_adam_conv2d_54_bias_v_read_readvariableop6
2savev2_adam_conv2d_55_kernel_v_read_readvariableop4
0savev2_adam_conv2d_55_bias_v_read_readvariableop6
2savev2_adam_conv2d_56_kernel_v_read_readvariableop4
0savev2_adam_conv2d_56_bias_v_read_readvariableop6
2savev2_adam_conv2d_57_kernel_v_read_readvariableop4
0savev2_adam_conv2d_57_bias_v_read_readvariableop6
2savev2_adam_conv2d_58_kernel_v_read_readvariableop4
0savev2_adam_conv2d_58_bias_v_read_readvariableop
savev2_const_1

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameј'
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:P*
dtype0*'
value'B§&PB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЋ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:P*
dtype0*Е
valueЋBЈPB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices­
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop(savev2_z_mean_kernel_read_readvariableop&savev2_z_mean_bias_read_readvariableop+savev2_z_log_var_kernel_read_readvariableop)savev2_z_log_var_bias_read_readvariableop*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop+savev2_conv2d_51_kernel_read_readvariableop)savev2_conv2d_51_bias_read_readvariableop+savev2_conv2d_52_kernel_read_readvariableop)savev2_conv2d_52_bias_read_readvariableop+savev2_conv2d_53_kernel_read_readvariableop)savev2_conv2d_53_bias_read_readvariableop+savev2_conv2d_54_kernel_read_readvariableop)savev2_conv2d_54_bias_read_readvariableop+savev2_conv2d_55_kernel_read_readvariableop)savev2_conv2d_55_bias_read_readvariableop+savev2_conv2d_56_kernel_read_readvariableop)savev2_conv2d_56_bias_read_readvariableop+savev2_conv2d_57_kernel_read_readvariableop)savev2_conv2d_57_bias_read_readvariableop+savev2_conv2d_58_kernel_read_readvariableop)savev2_conv2d_58_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableop/savev2_adam_z_mean_kernel_m_read_readvariableop-savev2_adam_z_mean_bias_m_read_readvariableop2savev2_adam_z_log_var_kernel_m_read_readvariableop0savev2_adam_z_log_var_bias_m_read_readvariableop1savev2_adam_dense_18_kernel_m_read_readvariableop/savev2_adam_dense_18_bias_m_read_readvariableop2savev2_adam_conv2d_51_kernel_m_read_readvariableop0savev2_adam_conv2d_51_bias_m_read_readvariableop2savev2_adam_conv2d_52_kernel_m_read_readvariableop0savev2_adam_conv2d_52_bias_m_read_readvariableop2savev2_adam_conv2d_53_kernel_m_read_readvariableop0savev2_adam_conv2d_53_bias_m_read_readvariableop2savev2_adam_conv2d_54_kernel_m_read_readvariableop0savev2_adam_conv2d_54_bias_m_read_readvariableop2savev2_adam_conv2d_55_kernel_m_read_readvariableop0savev2_adam_conv2d_55_bias_m_read_readvariableop2savev2_adam_conv2d_56_kernel_m_read_readvariableop0savev2_adam_conv2d_56_bias_m_read_readvariableop2savev2_adam_conv2d_57_kernel_m_read_readvariableop0savev2_adam_conv2d_57_bias_m_read_readvariableop2savev2_adam_conv2d_58_kernel_m_read_readvariableop0savev2_adam_conv2d_58_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableop/savev2_adam_z_mean_kernel_v_read_readvariableop-savev2_adam_z_mean_bias_v_read_readvariableop2savev2_adam_z_log_var_kernel_v_read_readvariableop0savev2_adam_z_log_var_bias_v_read_readvariableop1savev2_adam_dense_18_kernel_v_read_readvariableop/savev2_adam_dense_18_bias_v_read_readvariableop2savev2_adam_conv2d_51_kernel_v_read_readvariableop0savev2_adam_conv2d_51_bias_v_read_readvariableop2savev2_adam_conv2d_52_kernel_v_read_readvariableop0savev2_adam_conv2d_52_bias_v_read_readvariableop2savev2_adam_conv2d_53_kernel_v_read_readvariableop0savev2_adam_conv2d_53_bias_v_read_readvariableop2savev2_adam_conv2d_54_kernel_v_read_readvariableop0savev2_adam_conv2d_54_bias_v_read_readvariableop2savev2_adam_conv2d_55_kernel_v_read_readvariableop0savev2_adam_conv2d_55_bias_v_read_readvariableop2savev2_adam_conv2d_56_kernel_v_read_readvariableop0savev2_adam_conv2d_56_bias_v_read_readvariableop2savev2_adam_conv2d_57_kernel_v_read_readvariableop0savev2_adam_conv2d_57_bias_v_read_readvariableop2savev2_adam_conv2d_58_kernel_v_read_readvariableop0savev2_adam_conv2d_58_bias_v_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *^
dtypesT
R2P	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
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

identity_1Identity_1:output:0*М
_input_shapesЊ
Ї: :
 ::	::	::	:: : : : : :::::::@:::::::::: : :
 ::	::	::	::::::::@::::::::::
 ::	::	::	::::::::@:::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
 :!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	:!

_output_shapes	
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :& "
 
_output_shapes
:
 :!!

_output_shapes	
::%"!

_output_shapes
:	: #

_output_shapes
::%$!

_output_shapes
:	: %

_output_shapes
::%&!

_output_shapes
:	:!'

_output_shapes	
::,((
&
_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
::,,(
&
_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
:@: /

_output_shapes
::,0(
&
_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
::,4(
&
_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
:: 7

_output_shapes
::&8"
 
_output_shapes
:
 :!9

_output_shapes	
::%:!

_output_shapes
:	: ;

_output_shapes
::%<!

_output_shapes
:	: =

_output_shapes
::%>!

_output_shapes
:	:!?

_output_shapes	
::,@(
&
_output_shapes
:: A

_output_shapes
::,B(
&
_output_shapes
:: C

_output_shapes
::,D(
&
_output_shapes
:: E

_output_shapes
::,F(
&
_output_shapes
:@: G

_output_shapes
::,H(
&
_output_shapes
:: I

_output_shapes
::,J(
&
_output_shapes
:: K

_output_shapes
::,L(
&
_output_shapes
:: M

_output_shapes
::,N(
&
_output_shapes
:: O

_output_shapes
::P

_output_shapes
: 
Ч
~
)__inference_conv2d_57_layer_call_fn_58059

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_559182
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
н
D__inference_z_log_var_layer_call_and_return_conditional_losses_57566

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ц
ѓ
'__inference_model_7_layer_call_fn_56866
input_19
input_20
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

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23
identityЂStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinput_19input_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*&
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: *:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_7_layer_call_and_return_conditional_losses_568122
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*Ї
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::::::::::::: ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_19:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_20:

_output_shapes
: 
+
Э
H__inference_sequential_14_layer_call_and_return_conditional_losses_57434

inputs,
(conv2d_51_conv2d_readvariableop_resource-
)conv2d_51_biasadd_readvariableop_resource,
(conv2d_52_conv2d_readvariableop_resource-
)conv2d_52_biasadd_readvariableop_resource,
(conv2d_53_conv2d_readvariableop_resource-
)conv2d_53_biasadd_readvariableop_resource
identityЂ conv2d_51/BiasAdd/ReadVariableOpЂconv2d_51/Conv2D/ReadVariableOpЂ conv2d_52/BiasAdd/ReadVariableOpЂconv2d_52/Conv2D/ReadVariableOpЂ conv2d_53/BiasAdd/ReadVariableOpЂconv2d_53/Conv2D/ReadVariableOpГ
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_51/Conv2D/ReadVariableOpС
conv2d_51/Conv2DConv2Dinputs'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2
conv2d_51/Conv2DЊ
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_51/BiasAdd/ReadVariableOpА
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
conv2d_51/BiasAdd~
conv2d_51/ReluReluconv2d_51/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
conv2d_51/ReluГ
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_52/Conv2D/ReadVariableOpз
conv2d_52/Conv2DConv2Dconv2d_51/Relu:activations:0'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
conv2d_52/Conv2DЊ
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_52/BiasAdd/ReadVariableOpА
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_52/BiasAdd~
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_52/ReluГ
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_53/Conv2D/ReadVariableOpз
conv2d_53/Conv2DConv2Dconv2d_52/Relu:activations:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_53/Conv2DЊ
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_53/BiasAdd/ReadVariableOpА
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_53/BiasAdd~
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_53/Reluw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЂМ?2
dropout_9/dropout/ConstЏ
dropout_9/dropout/MulMulconv2d_53/Relu:activations:0 dropout_9/dropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
dropout_9/dropout/Mul~
dropout_9/dropout/ShapeShapeconv2d_53/Relu:activations:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shapeч
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
dtype0*
seedк20
.dropout_9/dropout/random_uniform/RandomUniform
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=2"
 dropout_9/dropout/GreaterEqual/yю
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2 
dropout_9/dropout/GreaterEqualЅ
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ2
dropout_9/dropout/CastЊ
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ2
dropout_9/dropout/Mul_1Ц
IdentityIdentitydropout_9/dropout/Mul_1:z:0!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:џџџџџџџџџ::::::2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
В	
ќ
-__inference_sequential_15_layer_call_fn_56116
input_18
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinput_18unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_560932
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ@::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
input_18

g
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_55793

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ю
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulе
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(2
resize/ResizeNearestNeighborЄ
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ч
`
D__inference_reshape_6_layer_call_and_return_conditional_losses_56351

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape/shape/3К
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
в

н
D__inference_conv2d_51_layer_call_and_return_conditional_losses_57903

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
А
L
0__inference_up_sampling2d_30_layer_call_fn_55742

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_30_layer_call_and_return_conditional_losses_557362
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
К
н
D__inference_conv2d_54_layer_call_and_return_conditional_losses_55834

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
К
н
D__inference_conv2d_55_layer_call_and_return_conditional_losses_58010

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В	
ќ
-__inference_sequential_15_layer_call_fn_56057
input_18
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinput_18unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_560342
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ@::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
input_18
К
н
D__inference_conv2d_57_layer_call_and_return_conditional_losses_55918

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ
~
)__inference_conv2d_52_layer_call_fn_57932

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_555542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ@@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Ч
~
)__inference_conv2d_55_layer_call_fn_58019

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_558622
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ч
~
)__inference_conv2d_58_layer_call_fn_58079

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_559462
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
п
}
(__inference_dense_18_layer_call_fn_57608

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_18_layer_call_and_return_conditional_losses_563212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ц
ѓ
'__inference_model_7_layer_call_fn_57344
inputs_0
inputs_1
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

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23
identityЂStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*&
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: *:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_7_layer_call_and_return_conditional_losses_566702
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*Ї
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::::::::::::: ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:

_output_shapes
: 
	
н
D__inference_z_log_var_layer_call_and_return_conditional_losses_56260

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
с
~
)__inference_z_log_var_layer_call_fn_57575

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_z_log_var_layer_call_and_return_conditional_losses_562602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

o
C__inference_lambda_4_layer_call_and_return_conditional_losses_57869
inputs_0
inputs_1
identityS
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
add/x_
addAddV2add/x:output:0inputs_0*
T0*'
_output_shapes
:џџџџџџџџџ2
addV
SquareSquareinputs_1*
T0*'
_output_shapes
:џџџџџџџџџ2
SquareX
subSubadd:z:0
Square:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
subM
ExpExpinputs_1*
T0*'
_output_shapes
:џџџџџџџџџ2
ExpY
sub_1Subsub:z:0Exp:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sub_1S
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   П2
mul/x^
mulMulmul/x:output:0	sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
Sum/reduction_indicesh
SumSummul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
SumX
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstS
MeanMeanSum:output:0Const:output:0*
T0*
_output_shapes
: 2
MeanP
IdentityIdentityMean:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
л
{
&__inference_z_mean_layer_call_fn_57556

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_z_mean_layer_call_and_return_conditional_losses_562342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ї
E
)__inference_flatten_6_layer_call_fn_57505

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_561742
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К
н
D__inference_conv2d_54_layer_call_and_return_conditional_losses_57990

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
яЅ
у
B__inference_model_7_layer_call_and_return_conditional_losses_57113
inputs_0
inputs_1:
6sequential_14_conv2d_51_conv2d_readvariableop_resource;
7sequential_14_conv2d_51_biasadd_readvariableop_resource:
6sequential_14_conv2d_52_conv2d_readvariableop_resource;
7sequential_14_conv2d_52_biasadd_readvariableop_resource:
6sequential_14_conv2d_53_conv2d_readvariableop_resource;
7sequential_14_conv2d_53_biasadd_readvariableop_resource+
'dense_17_matmul_readvariableop_resource,
(dense_17_biasadd_readvariableop_resource)
%z_mean_matmul_readvariableop_resource*
&z_mean_biasadd_readvariableop_resource,
(z_log_var_matmul_readvariableop_resource-
)z_log_var_biasadd_readvariableop_resource
tf_math_multiply_8_mul_x+
'dense_18_matmul_readvariableop_resource,
(dense_18_biasadd_readvariableop_resource:
6sequential_15_conv2d_54_conv2d_readvariableop_resource;
7sequential_15_conv2d_54_biasadd_readvariableop_resource:
6sequential_15_conv2d_55_conv2d_readvariableop_resource;
7sequential_15_conv2d_55_biasadd_readvariableop_resource:
6sequential_15_conv2d_56_conv2d_readvariableop_resource;
7sequential_15_conv2d_56_biasadd_readvariableop_resource:
6sequential_15_conv2d_57_conv2d_readvariableop_resource;
7sequential_15_conv2d_57_biasadd_readvariableop_resource:
6sequential_15_conv2d_58_conv2d_readvariableop_resource;
7sequential_15_conv2d_58_biasadd_readvariableop_resource
identity

identity_1Ђdense_17/BiasAdd/ReadVariableOpЂdense_17/MatMul/ReadVariableOpЂdense_18/BiasAdd/ReadVariableOpЂdense_18/MatMul/ReadVariableOpЂ.sequential_14/conv2d_51/BiasAdd/ReadVariableOpЂ-sequential_14/conv2d_51/Conv2D/ReadVariableOpЂ.sequential_14/conv2d_52/BiasAdd/ReadVariableOpЂ-sequential_14/conv2d_52/Conv2D/ReadVariableOpЂ.sequential_14/conv2d_53/BiasAdd/ReadVariableOpЂ-sequential_14/conv2d_53/Conv2D/ReadVariableOpЂ.sequential_15/conv2d_54/BiasAdd/ReadVariableOpЂ-sequential_15/conv2d_54/Conv2D/ReadVariableOpЂ.sequential_15/conv2d_55/BiasAdd/ReadVariableOpЂ-sequential_15/conv2d_55/Conv2D/ReadVariableOpЂ.sequential_15/conv2d_56/BiasAdd/ReadVariableOpЂ-sequential_15/conv2d_56/Conv2D/ReadVariableOpЂ.sequential_15/conv2d_57/BiasAdd/ReadVariableOpЂ-sequential_15/conv2d_57/Conv2D/ReadVariableOpЂ.sequential_15/conv2d_58/BiasAdd/ReadVariableOpЂ-sequential_15/conv2d_58/Conv2D/ReadVariableOpЂ z_log_var/BiasAdd/ReadVariableOpЂz_log_var/MatMul/ReadVariableOpЂz_mean/BiasAdd/ReadVariableOpЂz_mean/MatMul/ReadVariableOpн
-sequential_14/conv2d_51/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_14/conv2d_51/Conv2D/ReadVariableOpэ
sequential_14/conv2d_51/Conv2DConv2Dinputs_05sequential_14/conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2 
sequential_14/conv2d_51/Conv2Dд
.sequential_14/conv2d_51/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_14/conv2d_51/BiasAdd/ReadVariableOpш
sequential_14/conv2d_51/BiasAddBiasAdd'sequential_14/conv2d_51/Conv2D:output:06sequential_14/conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2!
sequential_14/conv2d_51/BiasAddЈ
sequential_14/conv2d_51/ReluRelu(sequential_14/conv2d_51/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
sequential_14/conv2d_51/Reluн
-sequential_14/conv2d_52/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_14/conv2d_52/Conv2D/ReadVariableOp
sequential_14/conv2d_52/Conv2DConv2D*sequential_14/conv2d_51/Relu:activations:05sequential_14/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2 
sequential_14/conv2d_52/Conv2Dд
.sequential_14/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_14/conv2d_52/BiasAdd/ReadVariableOpш
sequential_14/conv2d_52/BiasAddBiasAdd'sequential_14/conv2d_52/Conv2D:output:06sequential_14/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2!
sequential_14/conv2d_52/BiasAddЈ
sequential_14/conv2d_52/ReluRelu(sequential_14/conv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
sequential_14/conv2d_52/Reluн
-sequential_14/conv2d_53/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_14/conv2d_53/Conv2D/ReadVariableOp
sequential_14/conv2d_53/Conv2DConv2D*sequential_14/conv2d_52/Relu:activations:05sequential_14/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2 
sequential_14/conv2d_53/Conv2Dд
.sequential_14/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_14/conv2d_53/BiasAdd/ReadVariableOpш
sequential_14/conv2d_53/BiasAddBiasAdd'sequential_14/conv2d_53/Conv2D:output:06sequential_14/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2!
sequential_14/conv2d_53/BiasAddЈ
sequential_14/conv2d_53/ReluRelu(sequential_14/conv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
sequential_14/conv2d_53/Relu
%sequential_14/dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЂМ?2'
%sequential_14/dropout_9/dropout/Constч
#sequential_14/dropout_9/dropout/MulMul*sequential_14/conv2d_53/Relu:activations:0.sequential_14/dropout_9/dropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2%
#sequential_14/dropout_9/dropout/MulЈ
%sequential_14/dropout_9/dropout/ShapeShape*sequential_14/conv2d_53/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_14/dropout_9/dropout/Shape
<sequential_14/dropout_9/dropout/random_uniform/RandomUniformRandomUniform.sequential_14/dropout_9/dropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
dtype0*
seedк2>
<sequential_14/dropout_9/dropout/random_uniform/RandomUniformЅ
.sequential_14/dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=20
.sequential_14/dropout_9/dropout/GreaterEqual/yІ
,sequential_14/dropout_9/dropout/GreaterEqualGreaterEqualEsequential_14/dropout_9/dropout/random_uniform/RandomUniform:output:07sequential_14/dropout_9/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2.
,sequential_14/dropout_9/dropout/GreaterEqualЯ
$sequential_14/dropout_9/dropout/CastCast0sequential_14/dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ2&
$sequential_14/dropout_9/dropout/Castт
%sequential_14/dropout_9/dropout/Mul_1Mul'sequential_14/dropout_9/dropout/Mul:z:0(sequential_14/dropout_9/dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ2'
%sequential_14/dropout_9/dropout/Mul_1s
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten_6/ConstЉ
flatten_6/ReshapeReshape)sequential_14/dropout_9/dropout/Mul_1:z:0flatten_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2
flatten_6/Reshapex
concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_6/concat/axisО
concatenate_6/concatConcatV2flatten_6/Reshape:output:0inputs_1"concatenate_6/concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ 2
concatenate_6/concatЊ
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype02 
dense_17/MatMul/ReadVariableOpІ
dense_17/MatMulMatMulconcatenate_6/concat:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_17/MatMulЈ
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_17/BiasAdd/ReadVariableOpІ
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_17/BiasAddЃ
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
z_mean/MatMul/ReadVariableOp
z_mean/MatMulMatMuldense_17/BiasAdd:output:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
z_mean/MatMulЁ
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
z_mean/BiasAdd/ReadVariableOp
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
z_mean/BiasAddЌ
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02!
z_log_var/MatMul/ReadVariableOpЄ
z_log_var/MatMulMatMuldense_17/BiasAdd:output:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
z_log_var/MatMulЊ
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 z_log_var/BiasAdd/ReadVariableOpЉ
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
z_log_var/BiasAdd
tf.compat.v1.shape_4/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape_4/ShapeЊ
.tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_8/strided_slice/stackЎ
0tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_8/strided_slice/stack_1Ў
0tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_8/strided_slice/stack_2ў
(tf.__operators__.getitem_8/strided_sliceStridedSlice#tf.compat.v1.shape_4/Shape:output:07tf.__operators__.getitem_8/strided_slice/stack:output:09tf.__operators__.getitem_8/strided_slice/stack_1:output:09tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_8/strided_sliceЊ
.tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.tf.__operators__.getitem_9/strided_slice/stackЎ
0tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_9/strided_slice/stack_1Ў
0tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_9/strided_slice/stack_2ў
(tf.__operators__.getitem_9/strided_sliceStridedSlice#tf.compat.v1.shape_4/Shape:output:07tf.__operators__.getitem_9/strided_slice/stack:output:09tf.__operators__.getitem_9/strided_slice/stack_1:output:09tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_9/strided_slice
tf.math.multiply_8/MulMultf_math_multiply_8_mul_xz_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.multiply_8/Mul{
tf.math.exp_4/ExpExptf.math.multiply_8/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.exp_4/Expь
&tf.random.normal_4/random_normal/shapePack1tf.__operators__.getitem_8/strided_slice:output:01tf.__operators__.getitem_9/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&tf.random.normal_4/random_normal/shape
5tf.random.normal_4/random_normal/RandomStandardNormalRandomStandardNormal/tf.random.normal_4/random_normal/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
dtype0*
seedк*
seed227
5tf.random.normal_4/random_normal/RandomStandardNormalс
$tf.random.normal_4/random_normal/mulMul>tf.random.normal_4/random_normal/RandomStandardNormal:output:0z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2&
$tf.random.normal_4/random_normal/mulР
 tf.random.normal_4/random_normalAdd(tf.random.normal_4/random_normal/mul:z:0z_mean/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 tf.random.normal_4/random_normalІ
tf.math.multiply_9/MulMultf.math.exp_4/Exp:y:0$tf.random.normal_4/random_normal:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.multiply_9/MulЌ
tf.__operators__.add_4/AddV2AddV2z_mean/BiasAdd:output:0tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.__operators__.add_4/AddV2x
concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_7/concat/axisУ
concatenate_7/concatConcatV2 tf.__operators__.add_4/AddV2:z:0inputs_1"concatenate_7/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2
concatenate_7/concatЉ
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_18/MatMul/ReadVariableOpІ
dense_18/MatMulMatMulconcatenate_7/concat:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_18/MatMulЈ
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_18/BiasAdd/ReadVariableOpІ
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_18/BiasAddt
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_18/Relum
reshape_6/ShapeShapedense_18/Relu:activations:0*
T0*
_output_shapes
:2
reshape_6/Shape
reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_6/strided_slice/stack
reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_1
reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_2
reshape_6/strided_sliceStridedSlicereshape_6/Shape:output:0&reshape_6/strided_slice/stack:output:0(reshape_6/strided_slice/stack_1:output:0(reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_6/strided_slicex
reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/1x
reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/2x
reshape_6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_6/Reshape/shape/3і
reshape_6/Reshape/shapePack reshape_6/strided_slice:output:0"reshape_6/Reshape/shape/1:output:0"reshape_6/Reshape/shape/2:output:0"reshape_6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_6/Reshape/shapeЊ
reshape_6/ReshapeReshapedense_18/Relu:activations:0 reshape_6/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
reshape_6/Reshape
$sequential_15/up_sampling2d_30/ShapeShapereshape_6/Reshape:output:0*
T0*
_output_shapes
:2&
$sequential_15/up_sampling2d_30/ShapeВ
2sequential_15/up_sampling2d_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_15/up_sampling2d_30/strided_slice/stackЖ
4sequential_15/up_sampling2d_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_30/strided_slice/stack_1Ж
4sequential_15/up_sampling2d_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_30/strided_slice/stack_2
,sequential_15/up_sampling2d_30/strided_sliceStridedSlice-sequential_15/up_sampling2d_30/Shape:output:0;sequential_15/up_sampling2d_30/strided_slice/stack:output:0=sequential_15/up_sampling2d_30/strided_slice/stack_1:output:0=sequential_15/up_sampling2d_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,sequential_15/up_sampling2d_30/strided_slice
$sequential_15/up_sampling2d_30/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_15/up_sampling2d_30/Constк
"sequential_15/up_sampling2d_30/mulMul5sequential_15/up_sampling2d_30/strided_slice:output:0-sequential_15/up_sampling2d_30/Const:output:0*
T0*
_output_shapes
:2$
"sequential_15/up_sampling2d_30/mulЋ
;sequential_15/up_sampling2d_30/resize/ResizeNearestNeighborResizeNearestNeighborreshape_6/Reshape:output:0&sequential_15/up_sampling2d_30/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
half_pixel_centers(2=
;sequential_15/up_sampling2d_30/resize/ResizeNearestNeighborн
-sequential_15/conv2d_54/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-sequential_15/conv2d_54/Conv2D/ReadVariableOpБ
sequential_15/conv2d_54/Conv2DConv2DLsequential_15/up_sampling2d_30/resize/ResizeNearestNeighbor:resized_images:05sequential_15/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2 
sequential_15/conv2d_54/Conv2Dд
.sequential_15/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_15/conv2d_54/BiasAdd/ReadVariableOpш
sequential_15/conv2d_54/BiasAddBiasAdd'sequential_15/conv2d_54/Conv2D:output:06sequential_15/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2!
sequential_15/conv2d_54/BiasAddЈ
sequential_15/conv2d_54/ReluRelu(sequential_15/conv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
sequential_15/conv2d_54/ReluІ
$sequential_15/up_sampling2d_31/ShapeShape*sequential_15/conv2d_54/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_15/up_sampling2d_31/ShapeВ
2sequential_15/up_sampling2d_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_15/up_sampling2d_31/strided_slice/stackЖ
4sequential_15/up_sampling2d_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_31/strided_slice/stack_1Ж
4sequential_15/up_sampling2d_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_31/strided_slice/stack_2
,sequential_15/up_sampling2d_31/strided_sliceStridedSlice-sequential_15/up_sampling2d_31/Shape:output:0;sequential_15/up_sampling2d_31/strided_slice/stack:output:0=sequential_15/up_sampling2d_31/strided_slice/stack_1:output:0=sequential_15/up_sampling2d_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,sequential_15/up_sampling2d_31/strided_slice
$sequential_15/up_sampling2d_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_15/up_sampling2d_31/Constк
"sequential_15/up_sampling2d_31/mulMul5sequential_15/up_sampling2d_31/strided_slice:output:0-sequential_15/up_sampling2d_31/Const:output:0*
T0*
_output_shapes
:2$
"sequential_15/up_sampling2d_31/mulЛ
;sequential_15/up_sampling2d_31/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_15/conv2d_54/Relu:activations:0&sequential_15/up_sampling2d_31/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(2=
;sequential_15/up_sampling2d_31/resize/ResizeNearestNeighborн
-sequential_15/conv2d_55/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_15/conv2d_55/Conv2D/ReadVariableOpБ
sequential_15/conv2d_55/Conv2DConv2DLsequential_15/up_sampling2d_31/resize/ResizeNearestNeighbor:resized_images:05sequential_15/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2 
sequential_15/conv2d_55/Conv2Dд
.sequential_15/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_15/conv2d_55/BiasAdd/ReadVariableOpш
sequential_15/conv2d_55/BiasAddBiasAdd'sequential_15/conv2d_55/Conv2D:output:06sequential_15/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2!
sequential_15/conv2d_55/BiasAddЈ
sequential_15/conv2d_55/ReluRelu(sequential_15/conv2d_55/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
sequential_15/conv2d_55/ReluІ
$sequential_15/up_sampling2d_32/ShapeShape*sequential_15/conv2d_55/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_15/up_sampling2d_32/ShapeВ
2sequential_15/up_sampling2d_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_15/up_sampling2d_32/strided_slice/stackЖ
4sequential_15/up_sampling2d_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_32/strided_slice/stack_1Ж
4sequential_15/up_sampling2d_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_32/strided_slice/stack_2
,sequential_15/up_sampling2d_32/strided_sliceStridedSlice-sequential_15/up_sampling2d_32/Shape:output:0;sequential_15/up_sampling2d_32/strided_slice/stack:output:0=sequential_15/up_sampling2d_32/strided_slice/stack_1:output:0=sequential_15/up_sampling2d_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,sequential_15/up_sampling2d_32/strided_slice
$sequential_15/up_sampling2d_32/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_15/up_sampling2d_32/Constк
"sequential_15/up_sampling2d_32/mulMul5sequential_15/up_sampling2d_32/strided_slice:output:0-sequential_15/up_sampling2d_32/Const:output:0*
T0*
_output_shapes
:2$
"sequential_15/up_sampling2d_32/mulЛ
;sequential_15/up_sampling2d_32/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_15/conv2d_55/Relu:activations:0&sequential_15/up_sampling2d_32/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
half_pixel_centers(2=
;sequential_15/up_sampling2d_32/resize/ResizeNearestNeighborн
-sequential_15/conv2d_56/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_15/conv2d_56/Conv2D/ReadVariableOpБ
sequential_15/conv2d_56/Conv2DConv2DLsequential_15/up_sampling2d_32/resize/ResizeNearestNeighbor:resized_images:05sequential_15/conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2 
sequential_15/conv2d_56/Conv2Dд
.sequential_15/conv2d_56/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_15/conv2d_56/BiasAdd/ReadVariableOpш
sequential_15/conv2d_56/BiasAddBiasAdd'sequential_15/conv2d_56/Conv2D:output:06sequential_15/conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2!
sequential_15/conv2d_56/BiasAddЈ
sequential_15/conv2d_56/ReluRelu(sequential_15/conv2d_56/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
sequential_15/conv2d_56/ReluІ
$sequential_15/up_sampling2d_33/ShapeShape*sequential_15/conv2d_56/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_15/up_sampling2d_33/ShapeВ
2sequential_15/up_sampling2d_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_15/up_sampling2d_33/strided_slice/stackЖ
4sequential_15/up_sampling2d_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_33/strided_slice/stack_1Ж
4sequential_15/up_sampling2d_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_33/strided_slice/stack_2
,sequential_15/up_sampling2d_33/strided_sliceStridedSlice-sequential_15/up_sampling2d_33/Shape:output:0;sequential_15/up_sampling2d_33/strided_slice/stack:output:0=sequential_15/up_sampling2d_33/strided_slice/stack_1:output:0=sequential_15/up_sampling2d_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,sequential_15/up_sampling2d_33/strided_slice
$sequential_15/up_sampling2d_33/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_15/up_sampling2d_33/Constк
"sequential_15/up_sampling2d_33/mulMul5sequential_15/up_sampling2d_33/strided_slice:output:0-sequential_15/up_sampling2d_33/Const:output:0*
T0*
_output_shapes
:2$
"sequential_15/up_sampling2d_33/mulЛ
;sequential_15/up_sampling2d_33/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_15/conv2d_56/Relu:activations:0&sequential_15/up_sampling2d_33/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
half_pixel_centers(2=
;sequential_15/up_sampling2d_33/resize/ResizeNearestNeighborн
-sequential_15/conv2d_57/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_15/conv2d_57/Conv2D/ReadVariableOpБ
sequential_15/conv2d_57/Conv2DConv2DLsequential_15/up_sampling2d_33/resize/ResizeNearestNeighbor:resized_images:05sequential_15/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2 
sequential_15/conv2d_57/Conv2Dд
.sequential_15/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_15/conv2d_57/BiasAdd/ReadVariableOpш
sequential_15/conv2d_57/BiasAddBiasAdd'sequential_15/conv2d_57/Conv2D:output:06sequential_15/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2!
sequential_15/conv2d_57/BiasAddЈ
sequential_15/conv2d_57/ReluRelu(sequential_15/conv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
sequential_15/conv2d_57/ReluІ
$sequential_15/up_sampling2d_34/ShapeShape*sequential_15/conv2d_57/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_15/up_sampling2d_34/ShapeВ
2sequential_15/up_sampling2d_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_15/up_sampling2d_34/strided_slice/stackЖ
4sequential_15/up_sampling2d_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_34/strided_slice/stack_1Ж
4sequential_15/up_sampling2d_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_34/strided_slice/stack_2
,sequential_15/up_sampling2d_34/strided_sliceStridedSlice-sequential_15/up_sampling2d_34/Shape:output:0;sequential_15/up_sampling2d_34/strided_slice/stack:output:0=sequential_15/up_sampling2d_34/strided_slice/stack_1:output:0=sequential_15/up_sampling2d_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,sequential_15/up_sampling2d_34/strided_slice
$sequential_15/up_sampling2d_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_15/up_sampling2d_34/Constк
"sequential_15/up_sampling2d_34/mulMul5sequential_15/up_sampling2d_34/strided_slice:output:0-sequential_15/up_sampling2d_34/Const:output:0*
T0*
_output_shapes
:2$
"sequential_15/up_sampling2d_34/mulН
;sequential_15/up_sampling2d_34/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_15/conv2d_57/Relu:activations:0&sequential_15/up_sampling2d_34/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(2=
;sequential_15/up_sampling2d_34/resize/ResizeNearestNeighborн
-sequential_15/conv2d_58/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_15/conv2d_58/Conv2D/ReadVariableOpГ
sequential_15/conv2d_58/Conv2DConv2DLsequential_15/up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:05sequential_15/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2 
sequential_15/conv2d_58/Conv2Dд
.sequential_15/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_15/conv2d_58/BiasAdd/ReadVariableOpъ
sequential_15/conv2d_58/BiasAddBiasAdd'sequential_15/conv2d_58/Conv2D:output:06sequential_15/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ2!
sequential_15/conv2d_58/BiasAddГ
sequential_15/conv2d_58/SigmoidSigmoid(sequential_15/conv2d_58/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ2!
sequential_15/conv2d_58/Sigmoide
lambda_4/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lambda_4/add/x
lambda_4/addAddV2lambda_4/add/x:output:0z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lambda_4/addw
lambda_4/SquareSquarez_mean/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lambda_4/Square|
lambda_4/subSublambda_4/add:z:0lambda_4/Square:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lambda_4/subn
lambda_4/ExpExpz_mean/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lambda_4/Exp}
lambda_4/sub_1Sublambda_4/sub:z:0lambda_4/Exp:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lambda_4/sub_1e
lambda_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   П2
lambda_4/mul/x
lambda_4/mulMullambda_4/mul/x:output:0lambda_4/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lambda_4/mul
lambda_4/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2 
lambda_4/Sum/reduction_indices
lambda_4/SumSumlambda_4/mul:z:0'lambda_4/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
lambda_4/Sumj
lambda_4/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
lambda_4/Constw
lambda_4/MeanMeanlambda_4/Sum:output:0lambda_4/Const:output:0*
T0*
_output_shapes
: 2
lambda_4/Mean	
IdentityIdentity#sequential_15/conv2d_58/Sigmoid:y:0 ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp/^sequential_14/conv2d_51/BiasAdd/ReadVariableOp.^sequential_14/conv2d_51/Conv2D/ReadVariableOp/^sequential_14/conv2d_52/BiasAdd/ReadVariableOp.^sequential_14/conv2d_52/Conv2D/ReadVariableOp/^sequential_14/conv2d_53/BiasAdd/ReadVariableOp.^sequential_14/conv2d_53/Conv2D/ReadVariableOp/^sequential_15/conv2d_54/BiasAdd/ReadVariableOp.^sequential_15/conv2d_54/Conv2D/ReadVariableOp/^sequential_15/conv2d_55/BiasAdd/ReadVariableOp.^sequential_15/conv2d_55/Conv2D/ReadVariableOp/^sequential_15/conv2d_56/BiasAdd/ReadVariableOp.^sequential_15/conv2d_56/Conv2D/ReadVariableOp/^sequential_15/conv2d_57/BiasAdd/ReadVariableOp.^sequential_15/conv2d_57/Conv2D/ReadVariableOp/^sequential_15/conv2d_58/BiasAdd/ReadVariableOp.^sequential_15/conv2d_58/Conv2D/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџ2

Identityя

Identity_1Identitylambda_4/Mean:output:0 ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp/^sequential_14/conv2d_51/BiasAdd/ReadVariableOp.^sequential_14/conv2d_51/Conv2D/ReadVariableOp/^sequential_14/conv2d_52/BiasAdd/ReadVariableOp.^sequential_14/conv2d_52/Conv2D/ReadVariableOp/^sequential_14/conv2d_53/BiasAdd/ReadVariableOp.^sequential_14/conv2d_53/Conv2D/ReadVariableOp/^sequential_15/conv2d_54/BiasAdd/ReadVariableOp.^sequential_15/conv2d_54/Conv2D/ReadVariableOp/^sequential_15/conv2d_55/BiasAdd/ReadVariableOp.^sequential_15/conv2d_55/Conv2D/ReadVariableOp/^sequential_15/conv2d_56/BiasAdd/ReadVariableOp.^sequential_15/conv2d_56/Conv2D/ReadVariableOp/^sequential_15/conv2d_57/BiasAdd/ReadVariableOp.^sequential_15/conv2d_57/Conv2D/ReadVariableOp/^sequential_15/conv2d_58/BiasAdd/ReadVariableOp.^sequential_15/conv2d_58/Conv2D/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ї
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::::::::::::: ::::::::::::2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2`
.sequential_14/conv2d_51/BiasAdd/ReadVariableOp.sequential_14/conv2d_51/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_51/Conv2D/ReadVariableOp-sequential_14/conv2d_51/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_52/BiasAdd/ReadVariableOp.sequential_14/conv2d_52/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_52/Conv2D/ReadVariableOp-sequential_14/conv2d_52/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_53/BiasAdd/ReadVariableOp.sequential_14/conv2d_53/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_53/Conv2D/ReadVariableOp-sequential_14/conv2d_53/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_54/BiasAdd/ReadVariableOp.sequential_15/conv2d_54/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_54/Conv2D/ReadVariableOp-sequential_15/conv2d_54/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_55/BiasAdd/ReadVariableOp.sequential_15/conv2d_55/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_55/Conv2D/ReadVariableOp-sequential_15/conv2d_55/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_56/BiasAdd/ReadVariableOp.sequential_15/conv2d_56/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_56/Conv2D/ReadVariableOp-sequential_15/conv2d_56/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_57/BiasAdd/ReadVariableOp.sequential_15/conv2d_57/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_57/Conv2D/ReadVariableOp-sequential_15/conv2d_57/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_58/BiasAdd/ReadVariableOp.sequential_15/conv2d_58/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_58/Conv2D/ReadVariableOp-sequential_15/conv2d_58/Conv2D/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:

_output_shapes
: 
І
q
E__inference_add_loss_4_layer_call_and_return_conditional_losses_57886

inputs
identity

identity_1I
IdentityIdentityinputs*
T0*
_output_shapes
: 2

IdentityM

Identity_1Identityinputs*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes
: :> :

_output_shapes
: 
 
_user_specified_nameinputs
д
у
B__inference_model_7_layer_call_and_return_conditional_losses_57287
inputs_0
inputs_1:
6sequential_14_conv2d_51_conv2d_readvariableop_resource;
7sequential_14_conv2d_51_biasadd_readvariableop_resource:
6sequential_14_conv2d_52_conv2d_readvariableop_resource;
7sequential_14_conv2d_52_biasadd_readvariableop_resource:
6sequential_14_conv2d_53_conv2d_readvariableop_resource;
7sequential_14_conv2d_53_biasadd_readvariableop_resource+
'dense_17_matmul_readvariableop_resource,
(dense_17_biasadd_readvariableop_resource)
%z_mean_matmul_readvariableop_resource*
&z_mean_biasadd_readvariableop_resource,
(z_log_var_matmul_readvariableop_resource-
)z_log_var_biasadd_readvariableop_resource
tf_math_multiply_8_mul_x+
'dense_18_matmul_readvariableop_resource,
(dense_18_biasadd_readvariableop_resource:
6sequential_15_conv2d_54_conv2d_readvariableop_resource;
7sequential_15_conv2d_54_biasadd_readvariableop_resource:
6sequential_15_conv2d_55_conv2d_readvariableop_resource;
7sequential_15_conv2d_55_biasadd_readvariableop_resource:
6sequential_15_conv2d_56_conv2d_readvariableop_resource;
7sequential_15_conv2d_56_biasadd_readvariableop_resource:
6sequential_15_conv2d_57_conv2d_readvariableop_resource;
7sequential_15_conv2d_57_biasadd_readvariableop_resource:
6sequential_15_conv2d_58_conv2d_readvariableop_resource;
7sequential_15_conv2d_58_biasadd_readvariableop_resource
identity

identity_1Ђdense_17/BiasAdd/ReadVariableOpЂdense_17/MatMul/ReadVariableOpЂdense_18/BiasAdd/ReadVariableOpЂdense_18/MatMul/ReadVariableOpЂ.sequential_14/conv2d_51/BiasAdd/ReadVariableOpЂ-sequential_14/conv2d_51/Conv2D/ReadVariableOpЂ.sequential_14/conv2d_52/BiasAdd/ReadVariableOpЂ-sequential_14/conv2d_52/Conv2D/ReadVariableOpЂ.sequential_14/conv2d_53/BiasAdd/ReadVariableOpЂ-sequential_14/conv2d_53/Conv2D/ReadVariableOpЂ.sequential_15/conv2d_54/BiasAdd/ReadVariableOpЂ-sequential_15/conv2d_54/Conv2D/ReadVariableOpЂ.sequential_15/conv2d_55/BiasAdd/ReadVariableOpЂ-sequential_15/conv2d_55/Conv2D/ReadVariableOpЂ.sequential_15/conv2d_56/BiasAdd/ReadVariableOpЂ-sequential_15/conv2d_56/Conv2D/ReadVariableOpЂ.sequential_15/conv2d_57/BiasAdd/ReadVariableOpЂ-sequential_15/conv2d_57/Conv2D/ReadVariableOpЂ.sequential_15/conv2d_58/BiasAdd/ReadVariableOpЂ-sequential_15/conv2d_58/Conv2D/ReadVariableOpЂ z_log_var/BiasAdd/ReadVariableOpЂz_log_var/MatMul/ReadVariableOpЂz_mean/BiasAdd/ReadVariableOpЂz_mean/MatMul/ReadVariableOpн
-sequential_14/conv2d_51/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_14/conv2d_51/Conv2D/ReadVariableOpэ
sequential_14/conv2d_51/Conv2DConv2Dinputs_05sequential_14/conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2 
sequential_14/conv2d_51/Conv2Dд
.sequential_14/conv2d_51/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_14/conv2d_51/BiasAdd/ReadVariableOpш
sequential_14/conv2d_51/BiasAddBiasAdd'sequential_14/conv2d_51/Conv2D:output:06sequential_14/conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2!
sequential_14/conv2d_51/BiasAddЈ
sequential_14/conv2d_51/ReluRelu(sequential_14/conv2d_51/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
sequential_14/conv2d_51/Reluн
-sequential_14/conv2d_52/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_14/conv2d_52/Conv2D/ReadVariableOp
sequential_14/conv2d_52/Conv2DConv2D*sequential_14/conv2d_51/Relu:activations:05sequential_14/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2 
sequential_14/conv2d_52/Conv2Dд
.sequential_14/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_14/conv2d_52/BiasAdd/ReadVariableOpш
sequential_14/conv2d_52/BiasAddBiasAdd'sequential_14/conv2d_52/Conv2D:output:06sequential_14/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2!
sequential_14/conv2d_52/BiasAddЈ
sequential_14/conv2d_52/ReluRelu(sequential_14/conv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
sequential_14/conv2d_52/Reluн
-sequential_14/conv2d_53/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_14/conv2d_53/Conv2D/ReadVariableOp
sequential_14/conv2d_53/Conv2DConv2D*sequential_14/conv2d_52/Relu:activations:05sequential_14/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2 
sequential_14/conv2d_53/Conv2Dд
.sequential_14/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_14/conv2d_53/BiasAdd/ReadVariableOpш
sequential_14/conv2d_53/BiasAddBiasAdd'sequential_14/conv2d_53/Conv2D:output:06sequential_14/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2!
sequential_14/conv2d_53/BiasAddЈ
sequential_14/conv2d_53/ReluRelu(sequential_14/conv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
sequential_14/conv2d_53/ReluЖ
 sequential_14/dropout_9/IdentityIdentity*sequential_14/conv2d_53/Relu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ2"
 sequential_14/dropout_9/Identitys
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten_6/ConstЉ
flatten_6/ReshapeReshape)sequential_14/dropout_9/Identity:output:0flatten_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2
flatten_6/Reshapex
concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_6/concat/axisО
concatenate_6/concatConcatV2flatten_6/Reshape:output:0inputs_1"concatenate_6/concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ 2
concatenate_6/concatЊ
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype02 
dense_17/MatMul/ReadVariableOpІ
dense_17/MatMulMatMulconcatenate_6/concat:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_17/MatMulЈ
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_17/BiasAdd/ReadVariableOpІ
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_17/BiasAddЃ
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
z_mean/MatMul/ReadVariableOp
z_mean/MatMulMatMuldense_17/BiasAdd:output:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
z_mean/MatMulЁ
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
z_mean/BiasAdd/ReadVariableOp
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
z_mean/BiasAddЌ
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02!
z_log_var/MatMul/ReadVariableOpЄ
z_log_var/MatMulMatMuldense_17/BiasAdd:output:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
z_log_var/MatMulЊ
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 z_log_var/BiasAdd/ReadVariableOpЉ
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
z_log_var/BiasAdd
tf.compat.v1.shape_4/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape_4/ShapeЊ
.tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_8/strided_slice/stackЎ
0tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_8/strided_slice/stack_1Ў
0tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_8/strided_slice/stack_2ў
(tf.__operators__.getitem_8/strided_sliceStridedSlice#tf.compat.v1.shape_4/Shape:output:07tf.__operators__.getitem_8/strided_slice/stack:output:09tf.__operators__.getitem_8/strided_slice/stack_1:output:09tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_8/strided_sliceЊ
.tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.tf.__operators__.getitem_9/strided_slice/stackЎ
0tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_9/strided_slice/stack_1Ў
0tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_9/strided_slice/stack_2ў
(tf.__operators__.getitem_9/strided_sliceStridedSlice#tf.compat.v1.shape_4/Shape:output:07tf.__operators__.getitem_9/strided_slice/stack:output:09tf.__operators__.getitem_9/strided_slice/stack_1:output:09tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_9/strided_slice
tf.math.multiply_8/MulMultf_math_multiply_8_mul_xz_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.multiply_8/Mul{
tf.math.exp_4/ExpExptf.math.multiply_8/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.exp_4/Expь
&tf.random.normal_4/random_normal/shapePack1tf.__operators__.getitem_8/strided_slice:output:01tf.__operators__.getitem_9/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&tf.random.normal_4/random_normal/shape
5tf.random.normal_4/random_normal/RandomStandardNormalRandomStandardNormal/tf.random.normal_4/random_normal/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
dtype0*
seedк27
5tf.random.normal_4/random_normal/RandomStandardNormalс
$tf.random.normal_4/random_normal/mulMul>tf.random.normal_4/random_normal/RandomStandardNormal:output:0z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2&
$tf.random.normal_4/random_normal/mulР
 tf.random.normal_4/random_normalAdd(tf.random.normal_4/random_normal/mul:z:0z_mean/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 tf.random.normal_4/random_normalІ
tf.math.multiply_9/MulMultf.math.exp_4/Exp:y:0$tf.random.normal_4/random_normal:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.multiply_9/MulЌ
tf.__operators__.add_4/AddV2AddV2z_mean/BiasAdd:output:0tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.__operators__.add_4/AddV2x
concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_7/concat/axisУ
concatenate_7/concatConcatV2 tf.__operators__.add_4/AddV2:z:0inputs_1"concatenate_7/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2
concatenate_7/concatЉ
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_18/MatMul/ReadVariableOpІ
dense_18/MatMulMatMulconcatenate_7/concat:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_18/MatMulЈ
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_18/BiasAdd/ReadVariableOpІ
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_18/BiasAddt
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_18/Relum
reshape_6/ShapeShapedense_18/Relu:activations:0*
T0*
_output_shapes
:2
reshape_6/Shape
reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_6/strided_slice/stack
reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_1
reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_2
reshape_6/strided_sliceStridedSlicereshape_6/Shape:output:0&reshape_6/strided_slice/stack:output:0(reshape_6/strided_slice/stack_1:output:0(reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_6/strided_slicex
reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/1x
reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/2x
reshape_6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_6/Reshape/shape/3і
reshape_6/Reshape/shapePack reshape_6/strided_slice:output:0"reshape_6/Reshape/shape/1:output:0"reshape_6/Reshape/shape/2:output:0"reshape_6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_6/Reshape/shapeЊ
reshape_6/ReshapeReshapedense_18/Relu:activations:0 reshape_6/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
reshape_6/Reshape
$sequential_15/up_sampling2d_30/ShapeShapereshape_6/Reshape:output:0*
T0*
_output_shapes
:2&
$sequential_15/up_sampling2d_30/ShapeВ
2sequential_15/up_sampling2d_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_15/up_sampling2d_30/strided_slice/stackЖ
4sequential_15/up_sampling2d_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_30/strided_slice/stack_1Ж
4sequential_15/up_sampling2d_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_30/strided_slice/stack_2
,sequential_15/up_sampling2d_30/strided_sliceStridedSlice-sequential_15/up_sampling2d_30/Shape:output:0;sequential_15/up_sampling2d_30/strided_slice/stack:output:0=sequential_15/up_sampling2d_30/strided_slice/stack_1:output:0=sequential_15/up_sampling2d_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,sequential_15/up_sampling2d_30/strided_slice
$sequential_15/up_sampling2d_30/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_15/up_sampling2d_30/Constк
"sequential_15/up_sampling2d_30/mulMul5sequential_15/up_sampling2d_30/strided_slice:output:0-sequential_15/up_sampling2d_30/Const:output:0*
T0*
_output_shapes
:2$
"sequential_15/up_sampling2d_30/mulЋ
;sequential_15/up_sampling2d_30/resize/ResizeNearestNeighborResizeNearestNeighborreshape_6/Reshape:output:0&sequential_15/up_sampling2d_30/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
half_pixel_centers(2=
;sequential_15/up_sampling2d_30/resize/ResizeNearestNeighborн
-sequential_15/conv2d_54/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-sequential_15/conv2d_54/Conv2D/ReadVariableOpБ
sequential_15/conv2d_54/Conv2DConv2DLsequential_15/up_sampling2d_30/resize/ResizeNearestNeighbor:resized_images:05sequential_15/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2 
sequential_15/conv2d_54/Conv2Dд
.sequential_15/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_15/conv2d_54/BiasAdd/ReadVariableOpш
sequential_15/conv2d_54/BiasAddBiasAdd'sequential_15/conv2d_54/Conv2D:output:06sequential_15/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2!
sequential_15/conv2d_54/BiasAddЈ
sequential_15/conv2d_54/ReluRelu(sequential_15/conv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
sequential_15/conv2d_54/ReluІ
$sequential_15/up_sampling2d_31/ShapeShape*sequential_15/conv2d_54/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_15/up_sampling2d_31/ShapeВ
2sequential_15/up_sampling2d_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_15/up_sampling2d_31/strided_slice/stackЖ
4sequential_15/up_sampling2d_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_31/strided_slice/stack_1Ж
4sequential_15/up_sampling2d_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_31/strided_slice/stack_2
,sequential_15/up_sampling2d_31/strided_sliceStridedSlice-sequential_15/up_sampling2d_31/Shape:output:0;sequential_15/up_sampling2d_31/strided_slice/stack:output:0=sequential_15/up_sampling2d_31/strided_slice/stack_1:output:0=sequential_15/up_sampling2d_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,sequential_15/up_sampling2d_31/strided_slice
$sequential_15/up_sampling2d_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_15/up_sampling2d_31/Constк
"sequential_15/up_sampling2d_31/mulMul5sequential_15/up_sampling2d_31/strided_slice:output:0-sequential_15/up_sampling2d_31/Const:output:0*
T0*
_output_shapes
:2$
"sequential_15/up_sampling2d_31/mulЛ
;sequential_15/up_sampling2d_31/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_15/conv2d_54/Relu:activations:0&sequential_15/up_sampling2d_31/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(2=
;sequential_15/up_sampling2d_31/resize/ResizeNearestNeighborн
-sequential_15/conv2d_55/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_15/conv2d_55/Conv2D/ReadVariableOpБ
sequential_15/conv2d_55/Conv2DConv2DLsequential_15/up_sampling2d_31/resize/ResizeNearestNeighbor:resized_images:05sequential_15/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2 
sequential_15/conv2d_55/Conv2Dд
.sequential_15/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_15/conv2d_55/BiasAdd/ReadVariableOpш
sequential_15/conv2d_55/BiasAddBiasAdd'sequential_15/conv2d_55/Conv2D:output:06sequential_15/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2!
sequential_15/conv2d_55/BiasAddЈ
sequential_15/conv2d_55/ReluRelu(sequential_15/conv2d_55/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
sequential_15/conv2d_55/ReluІ
$sequential_15/up_sampling2d_32/ShapeShape*sequential_15/conv2d_55/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_15/up_sampling2d_32/ShapeВ
2sequential_15/up_sampling2d_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_15/up_sampling2d_32/strided_slice/stackЖ
4sequential_15/up_sampling2d_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_32/strided_slice/stack_1Ж
4sequential_15/up_sampling2d_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_32/strided_slice/stack_2
,sequential_15/up_sampling2d_32/strided_sliceStridedSlice-sequential_15/up_sampling2d_32/Shape:output:0;sequential_15/up_sampling2d_32/strided_slice/stack:output:0=sequential_15/up_sampling2d_32/strided_slice/stack_1:output:0=sequential_15/up_sampling2d_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,sequential_15/up_sampling2d_32/strided_slice
$sequential_15/up_sampling2d_32/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_15/up_sampling2d_32/Constк
"sequential_15/up_sampling2d_32/mulMul5sequential_15/up_sampling2d_32/strided_slice:output:0-sequential_15/up_sampling2d_32/Const:output:0*
T0*
_output_shapes
:2$
"sequential_15/up_sampling2d_32/mulЛ
;sequential_15/up_sampling2d_32/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_15/conv2d_55/Relu:activations:0&sequential_15/up_sampling2d_32/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
half_pixel_centers(2=
;sequential_15/up_sampling2d_32/resize/ResizeNearestNeighborн
-sequential_15/conv2d_56/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_15/conv2d_56/Conv2D/ReadVariableOpБ
sequential_15/conv2d_56/Conv2DConv2DLsequential_15/up_sampling2d_32/resize/ResizeNearestNeighbor:resized_images:05sequential_15/conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2 
sequential_15/conv2d_56/Conv2Dд
.sequential_15/conv2d_56/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_15/conv2d_56/BiasAdd/ReadVariableOpш
sequential_15/conv2d_56/BiasAddBiasAdd'sequential_15/conv2d_56/Conv2D:output:06sequential_15/conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2!
sequential_15/conv2d_56/BiasAddЈ
sequential_15/conv2d_56/ReluRelu(sequential_15/conv2d_56/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
sequential_15/conv2d_56/ReluІ
$sequential_15/up_sampling2d_33/ShapeShape*sequential_15/conv2d_56/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_15/up_sampling2d_33/ShapeВ
2sequential_15/up_sampling2d_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_15/up_sampling2d_33/strided_slice/stackЖ
4sequential_15/up_sampling2d_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_33/strided_slice/stack_1Ж
4sequential_15/up_sampling2d_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_33/strided_slice/stack_2
,sequential_15/up_sampling2d_33/strided_sliceStridedSlice-sequential_15/up_sampling2d_33/Shape:output:0;sequential_15/up_sampling2d_33/strided_slice/stack:output:0=sequential_15/up_sampling2d_33/strided_slice/stack_1:output:0=sequential_15/up_sampling2d_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,sequential_15/up_sampling2d_33/strided_slice
$sequential_15/up_sampling2d_33/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_15/up_sampling2d_33/Constк
"sequential_15/up_sampling2d_33/mulMul5sequential_15/up_sampling2d_33/strided_slice:output:0-sequential_15/up_sampling2d_33/Const:output:0*
T0*
_output_shapes
:2$
"sequential_15/up_sampling2d_33/mulЛ
;sequential_15/up_sampling2d_33/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_15/conv2d_56/Relu:activations:0&sequential_15/up_sampling2d_33/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
half_pixel_centers(2=
;sequential_15/up_sampling2d_33/resize/ResizeNearestNeighborн
-sequential_15/conv2d_57/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_15/conv2d_57/Conv2D/ReadVariableOpБ
sequential_15/conv2d_57/Conv2DConv2DLsequential_15/up_sampling2d_33/resize/ResizeNearestNeighbor:resized_images:05sequential_15/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2 
sequential_15/conv2d_57/Conv2Dд
.sequential_15/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_15/conv2d_57/BiasAdd/ReadVariableOpш
sequential_15/conv2d_57/BiasAddBiasAdd'sequential_15/conv2d_57/Conv2D:output:06sequential_15/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2!
sequential_15/conv2d_57/BiasAddЈ
sequential_15/conv2d_57/ReluRelu(sequential_15/conv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
sequential_15/conv2d_57/ReluІ
$sequential_15/up_sampling2d_34/ShapeShape*sequential_15/conv2d_57/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_15/up_sampling2d_34/ShapeВ
2sequential_15/up_sampling2d_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_15/up_sampling2d_34/strided_slice/stackЖ
4sequential_15/up_sampling2d_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_34/strided_slice/stack_1Ж
4sequential_15/up_sampling2d_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_15/up_sampling2d_34/strided_slice/stack_2
,sequential_15/up_sampling2d_34/strided_sliceStridedSlice-sequential_15/up_sampling2d_34/Shape:output:0;sequential_15/up_sampling2d_34/strided_slice/stack:output:0=sequential_15/up_sampling2d_34/strided_slice/stack_1:output:0=sequential_15/up_sampling2d_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,sequential_15/up_sampling2d_34/strided_slice
$sequential_15/up_sampling2d_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_15/up_sampling2d_34/Constк
"sequential_15/up_sampling2d_34/mulMul5sequential_15/up_sampling2d_34/strided_slice:output:0-sequential_15/up_sampling2d_34/Const:output:0*
T0*
_output_shapes
:2$
"sequential_15/up_sampling2d_34/mulН
;sequential_15/up_sampling2d_34/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_15/conv2d_57/Relu:activations:0&sequential_15/up_sampling2d_34/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(2=
;sequential_15/up_sampling2d_34/resize/ResizeNearestNeighborн
-sequential_15/conv2d_58/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_15/conv2d_58/Conv2D/ReadVariableOpГ
sequential_15/conv2d_58/Conv2DConv2DLsequential_15/up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:05sequential_15/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2 
sequential_15/conv2d_58/Conv2Dд
.sequential_15/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_15/conv2d_58/BiasAdd/ReadVariableOpъ
sequential_15/conv2d_58/BiasAddBiasAdd'sequential_15/conv2d_58/Conv2D:output:06sequential_15/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ2!
sequential_15/conv2d_58/BiasAddГ
sequential_15/conv2d_58/SigmoidSigmoid(sequential_15/conv2d_58/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ2!
sequential_15/conv2d_58/Sigmoide
lambda_4/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lambda_4/add/x
lambda_4/addAddV2lambda_4/add/x:output:0z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lambda_4/addw
lambda_4/SquareSquarez_mean/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lambda_4/Square|
lambda_4/subSublambda_4/add:z:0lambda_4/Square:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lambda_4/subn
lambda_4/ExpExpz_mean/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lambda_4/Exp}
lambda_4/sub_1Sublambda_4/sub:z:0lambda_4/Exp:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lambda_4/sub_1e
lambda_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   П2
lambda_4/mul/x
lambda_4/mulMullambda_4/mul/x:output:0lambda_4/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lambda_4/mul
lambda_4/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2 
lambda_4/Sum/reduction_indices
lambda_4/SumSumlambda_4/mul:z:0'lambda_4/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
lambda_4/Sumj
lambda_4/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
lambda_4/Constw
lambda_4/MeanMeanlambda_4/Sum:output:0lambda_4/Const:output:0*
T0*
_output_shapes
: 2
lambda_4/Mean	
IdentityIdentity#sequential_15/conv2d_58/Sigmoid:y:0 ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp/^sequential_14/conv2d_51/BiasAdd/ReadVariableOp.^sequential_14/conv2d_51/Conv2D/ReadVariableOp/^sequential_14/conv2d_52/BiasAdd/ReadVariableOp.^sequential_14/conv2d_52/Conv2D/ReadVariableOp/^sequential_14/conv2d_53/BiasAdd/ReadVariableOp.^sequential_14/conv2d_53/Conv2D/ReadVariableOp/^sequential_15/conv2d_54/BiasAdd/ReadVariableOp.^sequential_15/conv2d_54/Conv2D/ReadVariableOp/^sequential_15/conv2d_55/BiasAdd/ReadVariableOp.^sequential_15/conv2d_55/Conv2D/ReadVariableOp/^sequential_15/conv2d_56/BiasAdd/ReadVariableOp.^sequential_15/conv2d_56/Conv2D/ReadVariableOp/^sequential_15/conv2d_57/BiasAdd/ReadVariableOp.^sequential_15/conv2d_57/Conv2D/ReadVariableOp/^sequential_15/conv2d_58/BiasAdd/ReadVariableOp.^sequential_15/conv2d_58/Conv2D/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџ2

Identityя

Identity_1Identitylambda_4/Mean:output:0 ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp/^sequential_14/conv2d_51/BiasAdd/ReadVariableOp.^sequential_14/conv2d_51/Conv2D/ReadVariableOp/^sequential_14/conv2d_52/BiasAdd/ReadVariableOp.^sequential_14/conv2d_52/Conv2D/ReadVariableOp/^sequential_14/conv2d_53/BiasAdd/ReadVariableOp.^sequential_14/conv2d_53/Conv2D/ReadVariableOp/^sequential_15/conv2d_54/BiasAdd/ReadVariableOp.^sequential_15/conv2d_54/Conv2D/ReadVariableOp/^sequential_15/conv2d_55/BiasAdd/ReadVariableOp.^sequential_15/conv2d_55/Conv2D/ReadVariableOp/^sequential_15/conv2d_56/BiasAdd/ReadVariableOp.^sequential_15/conv2d_56/Conv2D/ReadVariableOp/^sequential_15/conv2d_57/BiasAdd/ReadVariableOp.^sequential_15/conv2d_57/Conv2D/ReadVariableOp/^sequential_15/conv2d_58/BiasAdd/ReadVariableOp.^sequential_15/conv2d_58/Conv2D/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ї
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::::::::::::: ::::::::::::2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2`
.sequential_14/conv2d_51/BiasAdd/ReadVariableOp.sequential_14/conv2d_51/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_51/Conv2D/ReadVariableOp-sequential_14/conv2d_51/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_52/BiasAdd/ReadVariableOp.sequential_14/conv2d_52/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_52/Conv2D/ReadVariableOp-sequential_14/conv2d_52/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_53/BiasAdd/ReadVariableOp.sequential_14/conv2d_53/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_53/Conv2D/ReadVariableOp-sequential_14/conv2d_53/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_54/BiasAdd/ReadVariableOp.sequential_15/conv2d_54/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_54/Conv2D/ReadVariableOp-sequential_15/conv2d_54/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_55/BiasAdd/ReadVariableOp.sequential_15/conv2d_55/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_55/Conv2D/ReadVariableOp-sequential_15/conv2d_55/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_56/BiasAdd/ReadVariableOp.sequential_15/conv2d_56/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_56/Conv2D/ReadVariableOp-sequential_15/conv2d_56/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_57/BiasAdd/ReadVariableOp.sequential_15/conv2d_57/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_57/Conv2D/ReadVariableOp-sequential_15/conv2d_57/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_58/BiasAdd/ReadVariableOp.sequential_15/conv2d_58/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_58/Conv2D/ReadVariableOp-sequential_15/conv2d_58/Conv2D/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:

_output_shapes
: 
С
b
)__inference_dropout_9_layer_call_fn_57974

inputs
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_556092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЉY
Ј
B__inference_model_7_layer_call_and_return_conditional_losses_56496
input_19
input_20
sequential_14_56155
sequential_14_56157
sequential_14_56159
sequential_14_56161
sequential_14_56163
sequential_14_56165
dense_17_56219
dense_17_56221
z_mean_56245
z_mean_56247
z_log_var_56271
z_log_var_56273
tf_math_multiply_8_mul_x
dense_18_56332
dense_18_56334
sequential_15_56409
sequential_15_56411
sequential_15_56413
sequential_15_56415
sequential_15_56417
sequential_15_56419
sequential_15_56421
sequential_15_56423
sequential_15_56425
sequential_15_56427
identity

identity_1Ђ dense_17/StatefulPartitionedCallЂ dense_18/StatefulPartitionedCallЂ%sequential_14/StatefulPartitionedCallЂ%sequential_15/StatefulPartitionedCallЂ!z_log_var/StatefulPartitionedCallЂz_mean/StatefulPartitionedCall
%sequential_14/StatefulPartitionedCallStatefulPartitionedCallinput_19sequential_14_56155sequential_14_56157sequential_14_56159sequential_14_56161sequential_14_56163sequential_14_56165*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_556712'
%sequential_14/StatefulPartitionedCall
flatten_6/PartitionedCallPartitionedCall.sequential_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_561742
flatten_6/PartitionedCall
concatenate_6/PartitionedCallPartitionedCall"flatten_6/PartitionedCall:output:0input_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_6_layer_call_and_return_conditional_losses_561892
concatenate_6/PartitionedCallЕ
 dense_17/StatefulPartitionedCallStatefulPartitionedCall&concatenate_6/PartitionedCall:output:0dense_17_56219dense_17_56221*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_562082"
 dense_17/StatefulPartitionedCall­
z_mean/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0z_mean_56245z_mean_56247*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_z_mean_layer_call_and_return_conditional_losses_562342 
z_mean/StatefulPartitionedCallМ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0z_log_var_56271z_log_var_56273*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_z_log_var_layer_call_and_return_conditional_losses_562602#
!z_log_var/StatefulPartitionedCall
tf.compat.v1.shape_4/ShapeShape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape_4/ShapeЊ
.tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_8/strided_slice/stackЎ
0tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_8/strided_slice/stack_1Ў
0tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_8/strided_slice/stack_2ў
(tf.__operators__.getitem_8/strided_sliceStridedSlice#tf.compat.v1.shape_4/Shape:output:07tf.__operators__.getitem_8/strided_slice/stack:output:09tf.__operators__.getitem_8/strided_slice/stack_1:output:09tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_8/strided_sliceЊ
.tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.tf.__operators__.getitem_9/strided_slice/stackЎ
0tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_9/strided_slice/stack_1Ў
0tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_9/strided_slice/stack_2ў
(tf.__operators__.getitem_9/strided_sliceStridedSlice#tf.compat.v1.shape_4/Shape:output:07tf.__operators__.getitem_9/strided_slice/stack:output:09tf.__operators__.getitem_9/strided_slice/stack_1:output:09tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_9/strided_sliceЏ
tf.math.multiply_8/MulMultf_math_multiply_8_mul_x*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.multiply_8/Mul{
tf.math.exp_4/ExpExptf.math.multiply_8/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.exp_4/Expь
&tf.random.normal_4/random_normal/shapePack1tf.__operators__.getitem_8/strided_slice:output:01tf.__operators__.getitem_9/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&tf.random.normal_4/random_normal/shape
5tf.random.normal_4/random_normal/RandomStandardNormalRandomStandardNormal/tf.random.normal_4/random_normal/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
dtype0*
seedк27
5tf.random.normal_4/random_normal/RandomStandardNormalё
$tf.random.normal_4/random_normal/mulMul>tf.random.normal_4/random_normal/RandomStandardNormal:output:0*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2&
$tf.random.normal_4/random_normal/mulа
 tf.random.normal_4/random_normalAdd(tf.random.normal_4/random_normal/mul:z:0'z_mean/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 tf.random.normal_4/random_normalІ
tf.math.multiply_9/MulMultf.math.exp_4/Exp:y:0$tf.random.normal_4/random_normal:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.multiply_9/MulМ
tf.__operators__.add_4/AddV2AddV2'z_mean/StatefulPartitionedCall:output:0tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.__operators__.add_4/AddV2
concatenate_7/PartitionedCallPartitionedCall tf.__operators__.add_4/AddV2:z:0input_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_563012
concatenate_7/PartitionedCallЕ
 dense_18/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0dense_18_56332dense_18_56334*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_18_layer_call_and_return_conditional_losses_563212"
 dense_18/StatefulPartitionedCall
reshape_6/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_reshape_6_layer_call_and_return_conditional_losses_563512
reshape_6/PartitionedCall
%sequential_15/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0sequential_15_56409sequential_15_56411sequential_15_56413sequential_15_56415sequential_15_56417sequential_15_56419sequential_15_56421sequential_15_56423sequential_15_56425sequential_15_56427*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_560342'
%sequential_15/StatefulPartitionedCall
lambda_4/PartitionedCallPartitionedCall*z_log_var/StatefulPartitionedCall:output:0'z_mean/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8 *L
fGRE
C__inference_lambda_4_layer_call_and_return_conditional_losses_564472
lambda_4/PartitionedCallщ
add_loss_4/PartitionedCallPartitionedCall!lambda_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_add_loss_4_layer_call_and_return_conditional_losses_564842
add_loss_4/PartitionedCallї
IdentityIdentity.sequential_15/StatefulPartitionedCall:output:0!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall&^sequential_14/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

IdentityХ

Identity_1Identity#add_loss_4/PartitionedCall:output:1!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall&^sequential_14/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ї
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::::::::::::: ::::::::::::2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2N
%sequential_14/StatefulPartitionedCall%sequential_14/StatefulPartitionedCall2N
%sequential_15/StatefulPartitionedCall%sequential_15/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_19:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_20:

_output_shapes
: 
	
м
C__inference_dense_17_layer_call_and_return_conditional_losses_57528

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
 *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
џ
~
)__inference_conv2d_53_layer_call_fn_57952

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_555812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ  ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
ч
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_55614

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

~
)__inference_conv2d_51_layer_call_fn_57912

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_555272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ	
њ
-__inference_sequential_15_layer_call_fn_57835

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
	unknown_8
identityЂStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_560932
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ@::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ю

н
D__inference_conv2d_52_layer_call_and_return_conditional_losses_55554

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
і
T
(__inference_lambda_4_layer_call_fn_57875
inputs_0
inputs_1
identityР
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
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
GPU2*0J 8 *L
fGRE
C__inference_lambda_4_layer_call_and_return_conditional_losses_564472
PartitionedCall[
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
І
Y
-__inference_concatenate_6_layer_call_fn_57518
inputs_0
inputs_1
identityз
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_6_layer_call_and_return_conditional_losses_561892
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ :џџџџџџџџџ:R N
(
_output_shapes
:џџџџџџџџџ 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
ќД
Й
 __inference__wrapped_model_55512
input_19
input_20B
>model_7_sequential_14_conv2d_51_conv2d_readvariableop_resourceC
?model_7_sequential_14_conv2d_51_biasadd_readvariableop_resourceB
>model_7_sequential_14_conv2d_52_conv2d_readvariableop_resourceC
?model_7_sequential_14_conv2d_52_biasadd_readvariableop_resourceB
>model_7_sequential_14_conv2d_53_conv2d_readvariableop_resourceC
?model_7_sequential_14_conv2d_53_biasadd_readvariableop_resource3
/model_7_dense_17_matmul_readvariableop_resource4
0model_7_dense_17_biasadd_readvariableop_resource1
-model_7_z_mean_matmul_readvariableop_resource2
.model_7_z_mean_biasadd_readvariableop_resource4
0model_7_z_log_var_matmul_readvariableop_resource5
1model_7_z_log_var_biasadd_readvariableop_resource$
 model_7_tf_math_multiply_8_mul_x3
/model_7_dense_18_matmul_readvariableop_resource4
0model_7_dense_18_biasadd_readvariableop_resourceB
>model_7_sequential_15_conv2d_54_conv2d_readvariableop_resourceC
?model_7_sequential_15_conv2d_54_biasadd_readvariableop_resourceB
>model_7_sequential_15_conv2d_55_conv2d_readvariableop_resourceC
?model_7_sequential_15_conv2d_55_biasadd_readvariableop_resourceB
>model_7_sequential_15_conv2d_56_conv2d_readvariableop_resourceC
?model_7_sequential_15_conv2d_56_biasadd_readvariableop_resourceB
>model_7_sequential_15_conv2d_57_conv2d_readvariableop_resourceC
?model_7_sequential_15_conv2d_57_biasadd_readvariableop_resourceB
>model_7_sequential_15_conv2d_58_conv2d_readvariableop_resourceC
?model_7_sequential_15_conv2d_58_biasadd_readvariableop_resource
identityЂ'model_7/dense_17/BiasAdd/ReadVariableOpЂ&model_7/dense_17/MatMul/ReadVariableOpЂ'model_7/dense_18/BiasAdd/ReadVariableOpЂ&model_7/dense_18/MatMul/ReadVariableOpЂ6model_7/sequential_14/conv2d_51/BiasAdd/ReadVariableOpЂ5model_7/sequential_14/conv2d_51/Conv2D/ReadVariableOpЂ6model_7/sequential_14/conv2d_52/BiasAdd/ReadVariableOpЂ5model_7/sequential_14/conv2d_52/Conv2D/ReadVariableOpЂ6model_7/sequential_14/conv2d_53/BiasAdd/ReadVariableOpЂ5model_7/sequential_14/conv2d_53/Conv2D/ReadVariableOpЂ6model_7/sequential_15/conv2d_54/BiasAdd/ReadVariableOpЂ5model_7/sequential_15/conv2d_54/Conv2D/ReadVariableOpЂ6model_7/sequential_15/conv2d_55/BiasAdd/ReadVariableOpЂ5model_7/sequential_15/conv2d_55/Conv2D/ReadVariableOpЂ6model_7/sequential_15/conv2d_56/BiasAdd/ReadVariableOpЂ5model_7/sequential_15/conv2d_56/Conv2D/ReadVariableOpЂ6model_7/sequential_15/conv2d_57/BiasAdd/ReadVariableOpЂ5model_7/sequential_15/conv2d_57/Conv2D/ReadVariableOpЂ6model_7/sequential_15/conv2d_58/BiasAdd/ReadVariableOpЂ5model_7/sequential_15/conv2d_58/Conv2D/ReadVariableOpЂ(model_7/z_log_var/BiasAdd/ReadVariableOpЂ'model_7/z_log_var/MatMul/ReadVariableOpЂ%model_7/z_mean/BiasAdd/ReadVariableOpЂ$model_7/z_mean/MatMul/ReadVariableOpѕ
5model_7/sequential_14/conv2d_51/Conv2D/ReadVariableOpReadVariableOp>model_7_sequential_14_conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype027
5model_7/sequential_14/conv2d_51/Conv2D/ReadVariableOp
&model_7/sequential_14/conv2d_51/Conv2DConv2Dinput_19=model_7/sequential_14/conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2(
&model_7/sequential_14/conv2d_51/Conv2Dь
6model_7/sequential_14/conv2d_51/BiasAdd/ReadVariableOpReadVariableOp?model_7_sequential_14_conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6model_7/sequential_14/conv2d_51/BiasAdd/ReadVariableOp
'model_7/sequential_14/conv2d_51/BiasAddBiasAdd/model_7/sequential_14/conv2d_51/Conv2D:output:0>model_7/sequential_14/conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2)
'model_7/sequential_14/conv2d_51/BiasAddР
$model_7/sequential_14/conv2d_51/ReluRelu0model_7/sequential_14/conv2d_51/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2&
$model_7/sequential_14/conv2d_51/Reluѕ
5model_7/sequential_14/conv2d_52/Conv2D/ReadVariableOpReadVariableOp>model_7_sequential_14_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype027
5model_7/sequential_14/conv2d_52/Conv2D/ReadVariableOpЏ
&model_7/sequential_14/conv2d_52/Conv2DConv2D2model_7/sequential_14/conv2d_51/Relu:activations:0=model_7/sequential_14/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2(
&model_7/sequential_14/conv2d_52/Conv2Dь
6model_7/sequential_14/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp?model_7_sequential_14_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6model_7/sequential_14/conv2d_52/BiasAdd/ReadVariableOp
'model_7/sequential_14/conv2d_52/BiasAddBiasAdd/model_7/sequential_14/conv2d_52/Conv2D:output:0>model_7/sequential_14/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2)
'model_7/sequential_14/conv2d_52/BiasAddР
$model_7/sequential_14/conv2d_52/ReluRelu0model_7/sequential_14/conv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2&
$model_7/sequential_14/conv2d_52/Reluѕ
5model_7/sequential_14/conv2d_53/Conv2D/ReadVariableOpReadVariableOp>model_7_sequential_14_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype027
5model_7/sequential_14/conv2d_53/Conv2D/ReadVariableOpЏ
&model_7/sequential_14/conv2d_53/Conv2DConv2D2model_7/sequential_14/conv2d_52/Relu:activations:0=model_7/sequential_14/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2(
&model_7/sequential_14/conv2d_53/Conv2Dь
6model_7/sequential_14/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp?model_7_sequential_14_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6model_7/sequential_14/conv2d_53/BiasAdd/ReadVariableOp
'model_7/sequential_14/conv2d_53/BiasAddBiasAdd/model_7/sequential_14/conv2d_53/Conv2D:output:0>model_7/sequential_14/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2)
'model_7/sequential_14/conv2d_53/BiasAddР
$model_7/sequential_14/conv2d_53/ReluRelu0model_7/sequential_14/conv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2&
$model_7/sequential_14/conv2d_53/ReluЮ
(model_7/sequential_14/dropout_9/IdentityIdentity2model_7/sequential_14/conv2d_53/Relu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ2*
(model_7/sequential_14/dropout_9/Identity
model_7/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
model_7/flatten_6/ConstЩ
model_7/flatten_6/ReshapeReshape1model_7/sequential_14/dropout_9/Identity:output:0 model_7/flatten_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2
model_7/flatten_6/Reshape
!model_7/concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_7/concatenate_6/concat/axisо
model_7/concatenate_6/concatConcatV2"model_7/flatten_6/Reshape:output:0input_20*model_7/concatenate_6/concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ 2
model_7/concatenate_6/concatТ
&model_7/dense_17/MatMul/ReadVariableOpReadVariableOp/model_7_dense_17_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype02(
&model_7/dense_17/MatMul/ReadVariableOpЦ
model_7/dense_17/MatMulMatMul%model_7/concatenate_6/concat:output:0.model_7/dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
model_7/dense_17/MatMulР
'model_7/dense_17/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'model_7/dense_17/BiasAdd/ReadVariableOpЦ
model_7/dense_17/BiasAddBiasAdd!model_7/dense_17/MatMul:product:0/model_7/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
model_7/dense_17/BiasAddЛ
$model_7/z_mean/MatMul/ReadVariableOpReadVariableOp-model_7_z_mean_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02&
$model_7/z_mean/MatMul/ReadVariableOpЛ
model_7/z_mean/MatMulMatMul!model_7/dense_17/BiasAdd:output:0,model_7/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_7/z_mean/MatMulЙ
%model_7/z_mean/BiasAdd/ReadVariableOpReadVariableOp.model_7_z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model_7/z_mean/BiasAdd/ReadVariableOpН
model_7/z_mean/BiasAddBiasAddmodel_7/z_mean/MatMul:product:0-model_7/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_7/z_mean/BiasAddФ
'model_7/z_log_var/MatMul/ReadVariableOpReadVariableOp0model_7_z_log_var_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02)
'model_7/z_log_var/MatMul/ReadVariableOpФ
model_7/z_log_var/MatMulMatMul!model_7/dense_17/BiasAdd:output:0/model_7/z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_7/z_log_var/MatMulТ
(model_7/z_log_var/BiasAdd/ReadVariableOpReadVariableOp1model_7_z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_7/z_log_var/BiasAdd/ReadVariableOpЩ
model_7/z_log_var/BiasAddBiasAdd"model_7/z_log_var/MatMul:product:00model_7/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_7/z_log_var/BiasAdd
"model_7/tf.compat.v1.shape_4/ShapeShapemodel_7/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:2$
"model_7/tf.compat.v1.shape_4/ShapeК
6model_7/tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6model_7/tf.__operators__.getitem_8/strided_slice/stackО
8model_7/tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_7/tf.__operators__.getitem_8/strided_slice/stack_1О
8model_7/tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_7/tf.__operators__.getitem_8/strided_slice/stack_2Ў
0model_7/tf.__operators__.getitem_8/strided_sliceStridedSlice+model_7/tf.compat.v1.shape_4/Shape:output:0?model_7/tf.__operators__.getitem_8/strided_slice/stack:output:0Amodel_7/tf.__operators__.getitem_8/strided_slice/stack_1:output:0Amodel_7/tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0model_7/tf.__operators__.getitem_8/strided_sliceК
6model_7/tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6model_7/tf.__operators__.getitem_9/strided_slice/stackО
8model_7/tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_7/tf.__operators__.getitem_9/strided_slice/stack_1О
8model_7/tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_7/tf.__operators__.getitem_9/strided_slice/stack_2Ў
0model_7/tf.__operators__.getitem_9/strided_sliceStridedSlice+model_7/tf.compat.v1.shape_4/Shape:output:0?model_7/tf.__operators__.getitem_9/strided_slice/stack:output:0Amodel_7/tf.__operators__.getitem_9/strided_slice/stack_1:output:0Amodel_7/tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0model_7/tf.__operators__.getitem_9/strided_sliceП
model_7/tf.math.multiply_8/MulMul model_7_tf_math_multiply_8_mul_x"model_7/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
model_7/tf.math.multiply_8/Mul
model_7/tf.math.exp_4/ExpExp"model_7/tf.math.multiply_8/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_7/tf.math.exp_4/Exp
.model_7/tf.random.normal_4/random_normal/shapePack9model_7/tf.__operators__.getitem_8/strided_slice:output:09model_7/tf.__operators__.getitem_9/strided_slice:output:0*
N*
T0*
_output_shapes
:20
.model_7/tf.random.normal_4/random_normal/shapeЄ
=model_7/tf.random.normal_4/random_normal/RandomStandardNormalRandomStandardNormal7model_7/tf.random.normal_4/random_normal/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
dtype0*
seedк2?
=model_7/tf.random.normal_4/random_normal/RandomStandardNormal
,model_7/tf.random.normal_4/random_normal/mulMulFmodel_7/tf.random.normal_4/random_normal/RandomStandardNormal:output:0"model_7/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2.
,model_7/tf.random.normal_4/random_normal/mulр
(model_7/tf.random.normal_4/random_normalAdd0model_7/tf.random.normal_4/random_normal/mul:z:0model_7/z_mean/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
(model_7/tf.random.normal_4/random_normalЦ
model_7/tf.math.multiply_9/MulMulmodel_7/tf.math.exp_4/Exp:y:0,model_7/tf.random.normal_4/random_normal:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
model_7/tf.math.multiply_9/MulЬ
$model_7/tf.__operators__.add_4/AddV2AddV2model_7/z_mean/BiasAdd:output:0"model_7/tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2&
$model_7/tf.__operators__.add_4/AddV2
!model_7/concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_7/concatenate_7/concat/axisу
model_7/concatenate_7/concatConcatV2(model_7/tf.__operators__.add_4/AddV2:z:0input_20*model_7/concatenate_7/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2
model_7/concatenate_7/concatС
&model_7/dense_18/MatMul/ReadVariableOpReadVariableOp/model_7_dense_18_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02(
&model_7/dense_18/MatMul/ReadVariableOpЦ
model_7/dense_18/MatMulMatMul%model_7/concatenate_7/concat:output:0.model_7/dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
model_7/dense_18/MatMulР
'model_7/dense_18/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'model_7/dense_18/BiasAdd/ReadVariableOpЦ
model_7/dense_18/BiasAddBiasAdd!model_7/dense_18/MatMul:product:0/model_7/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
model_7/dense_18/BiasAdd
model_7/dense_18/ReluRelu!model_7/dense_18/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
model_7/dense_18/Relu
model_7/reshape_6/ShapeShape#model_7/dense_18/Relu:activations:0*
T0*
_output_shapes
:2
model_7/reshape_6/Shape
%model_7/reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%model_7/reshape_6/strided_slice/stack
'model_7/reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_7/reshape_6/strided_slice/stack_1
'model_7/reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_7/reshape_6/strided_slice/stack_2Ю
model_7/reshape_6/strided_sliceStridedSlice model_7/reshape_6/Shape:output:0.model_7/reshape_6/strided_slice/stack:output:00model_7/reshape_6/strided_slice/stack_1:output:00model_7/reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
model_7/reshape_6/strided_slice
!model_7/reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!model_7/reshape_6/Reshape/shape/1
!model_7/reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!model_7/reshape_6/Reshape/shape/2
!model_7/reshape_6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2#
!model_7/reshape_6/Reshape/shape/3І
model_7/reshape_6/Reshape/shapePack(model_7/reshape_6/strided_slice:output:0*model_7/reshape_6/Reshape/shape/1:output:0*model_7/reshape_6/Reshape/shape/2:output:0*model_7/reshape_6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2!
model_7/reshape_6/Reshape/shapeЪ
model_7/reshape_6/ReshapeReshape#model_7/dense_18/Relu:activations:0(model_7/reshape_6/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
model_7/reshape_6/ReshapeЎ
,model_7/sequential_15/up_sampling2d_30/ShapeShape"model_7/reshape_6/Reshape:output:0*
T0*
_output_shapes
:2.
,model_7/sequential_15/up_sampling2d_30/ShapeТ
:model_7/sequential_15/up_sampling2d_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:model_7/sequential_15/up_sampling2d_30/strided_slice/stackЦ
<model_7/sequential_15/up_sampling2d_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_7/sequential_15/up_sampling2d_30/strided_slice/stack_1Ц
<model_7/sequential_15/up_sampling2d_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_7/sequential_15/up_sampling2d_30/strided_slice/stack_2И
4model_7/sequential_15/up_sampling2d_30/strided_sliceStridedSlice5model_7/sequential_15/up_sampling2d_30/Shape:output:0Cmodel_7/sequential_15/up_sampling2d_30/strided_slice/stack:output:0Emodel_7/sequential_15/up_sampling2d_30/strided_slice/stack_1:output:0Emodel_7/sequential_15/up_sampling2d_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:26
4model_7/sequential_15/up_sampling2d_30/strided_slice­
,model_7/sequential_15/up_sampling2d_30/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2.
,model_7/sequential_15/up_sampling2d_30/Constњ
*model_7/sequential_15/up_sampling2d_30/mulMul=model_7/sequential_15/up_sampling2d_30/strided_slice:output:05model_7/sequential_15/up_sampling2d_30/Const:output:0*
T0*
_output_shapes
:2,
*model_7/sequential_15/up_sampling2d_30/mulЫ
Cmodel_7/sequential_15/up_sampling2d_30/resize/ResizeNearestNeighborResizeNearestNeighbor"model_7/reshape_6/Reshape:output:0.model_7/sequential_15/up_sampling2d_30/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
half_pixel_centers(2E
Cmodel_7/sequential_15/up_sampling2d_30/resize/ResizeNearestNeighborѕ
5model_7/sequential_15/conv2d_54/Conv2D/ReadVariableOpReadVariableOp>model_7_sequential_15_conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype027
5model_7/sequential_15/conv2d_54/Conv2D/ReadVariableOpб
&model_7/sequential_15/conv2d_54/Conv2DConv2DTmodel_7/sequential_15/up_sampling2d_30/resize/ResizeNearestNeighbor:resized_images:0=model_7/sequential_15/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2(
&model_7/sequential_15/conv2d_54/Conv2Dь
6model_7/sequential_15/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp?model_7_sequential_15_conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6model_7/sequential_15/conv2d_54/BiasAdd/ReadVariableOp
'model_7/sequential_15/conv2d_54/BiasAddBiasAdd/model_7/sequential_15/conv2d_54/Conv2D:output:0>model_7/sequential_15/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2)
'model_7/sequential_15/conv2d_54/BiasAddР
$model_7/sequential_15/conv2d_54/ReluRelu0model_7/sequential_15/conv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2&
$model_7/sequential_15/conv2d_54/ReluО
,model_7/sequential_15/up_sampling2d_31/ShapeShape2model_7/sequential_15/conv2d_54/Relu:activations:0*
T0*
_output_shapes
:2.
,model_7/sequential_15/up_sampling2d_31/ShapeТ
:model_7/sequential_15/up_sampling2d_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:model_7/sequential_15/up_sampling2d_31/strided_slice/stackЦ
<model_7/sequential_15/up_sampling2d_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_7/sequential_15/up_sampling2d_31/strided_slice/stack_1Ц
<model_7/sequential_15/up_sampling2d_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_7/sequential_15/up_sampling2d_31/strided_slice/stack_2И
4model_7/sequential_15/up_sampling2d_31/strided_sliceStridedSlice5model_7/sequential_15/up_sampling2d_31/Shape:output:0Cmodel_7/sequential_15/up_sampling2d_31/strided_slice/stack:output:0Emodel_7/sequential_15/up_sampling2d_31/strided_slice/stack_1:output:0Emodel_7/sequential_15/up_sampling2d_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:26
4model_7/sequential_15/up_sampling2d_31/strided_slice­
,model_7/sequential_15/up_sampling2d_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2.
,model_7/sequential_15/up_sampling2d_31/Constњ
*model_7/sequential_15/up_sampling2d_31/mulMul=model_7/sequential_15/up_sampling2d_31/strided_slice:output:05model_7/sequential_15/up_sampling2d_31/Const:output:0*
T0*
_output_shapes
:2,
*model_7/sequential_15/up_sampling2d_31/mulл
Cmodel_7/sequential_15/up_sampling2d_31/resize/ResizeNearestNeighborResizeNearestNeighbor2model_7/sequential_15/conv2d_54/Relu:activations:0.model_7/sequential_15/up_sampling2d_31/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(2E
Cmodel_7/sequential_15/up_sampling2d_31/resize/ResizeNearestNeighborѕ
5model_7/sequential_15/conv2d_55/Conv2D/ReadVariableOpReadVariableOp>model_7_sequential_15_conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype027
5model_7/sequential_15/conv2d_55/Conv2D/ReadVariableOpб
&model_7/sequential_15/conv2d_55/Conv2DConv2DTmodel_7/sequential_15/up_sampling2d_31/resize/ResizeNearestNeighbor:resized_images:0=model_7/sequential_15/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2(
&model_7/sequential_15/conv2d_55/Conv2Dь
6model_7/sequential_15/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp?model_7_sequential_15_conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6model_7/sequential_15/conv2d_55/BiasAdd/ReadVariableOp
'model_7/sequential_15/conv2d_55/BiasAddBiasAdd/model_7/sequential_15/conv2d_55/Conv2D:output:0>model_7/sequential_15/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2)
'model_7/sequential_15/conv2d_55/BiasAddР
$model_7/sequential_15/conv2d_55/ReluRelu0model_7/sequential_15/conv2d_55/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2&
$model_7/sequential_15/conv2d_55/ReluО
,model_7/sequential_15/up_sampling2d_32/ShapeShape2model_7/sequential_15/conv2d_55/Relu:activations:0*
T0*
_output_shapes
:2.
,model_7/sequential_15/up_sampling2d_32/ShapeТ
:model_7/sequential_15/up_sampling2d_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:model_7/sequential_15/up_sampling2d_32/strided_slice/stackЦ
<model_7/sequential_15/up_sampling2d_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_7/sequential_15/up_sampling2d_32/strided_slice/stack_1Ц
<model_7/sequential_15/up_sampling2d_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_7/sequential_15/up_sampling2d_32/strided_slice/stack_2И
4model_7/sequential_15/up_sampling2d_32/strided_sliceStridedSlice5model_7/sequential_15/up_sampling2d_32/Shape:output:0Cmodel_7/sequential_15/up_sampling2d_32/strided_slice/stack:output:0Emodel_7/sequential_15/up_sampling2d_32/strided_slice/stack_1:output:0Emodel_7/sequential_15/up_sampling2d_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:26
4model_7/sequential_15/up_sampling2d_32/strided_slice­
,model_7/sequential_15/up_sampling2d_32/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2.
,model_7/sequential_15/up_sampling2d_32/Constњ
*model_7/sequential_15/up_sampling2d_32/mulMul=model_7/sequential_15/up_sampling2d_32/strided_slice:output:05model_7/sequential_15/up_sampling2d_32/Const:output:0*
T0*
_output_shapes
:2,
*model_7/sequential_15/up_sampling2d_32/mulл
Cmodel_7/sequential_15/up_sampling2d_32/resize/ResizeNearestNeighborResizeNearestNeighbor2model_7/sequential_15/conv2d_55/Relu:activations:0.model_7/sequential_15/up_sampling2d_32/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
half_pixel_centers(2E
Cmodel_7/sequential_15/up_sampling2d_32/resize/ResizeNearestNeighborѕ
5model_7/sequential_15/conv2d_56/Conv2D/ReadVariableOpReadVariableOp>model_7_sequential_15_conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype027
5model_7/sequential_15/conv2d_56/Conv2D/ReadVariableOpб
&model_7/sequential_15/conv2d_56/Conv2DConv2DTmodel_7/sequential_15/up_sampling2d_32/resize/ResizeNearestNeighbor:resized_images:0=model_7/sequential_15/conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2(
&model_7/sequential_15/conv2d_56/Conv2Dь
6model_7/sequential_15/conv2d_56/BiasAdd/ReadVariableOpReadVariableOp?model_7_sequential_15_conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6model_7/sequential_15/conv2d_56/BiasAdd/ReadVariableOp
'model_7/sequential_15/conv2d_56/BiasAddBiasAdd/model_7/sequential_15/conv2d_56/Conv2D:output:0>model_7/sequential_15/conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2)
'model_7/sequential_15/conv2d_56/BiasAddР
$model_7/sequential_15/conv2d_56/ReluRelu0model_7/sequential_15/conv2d_56/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2&
$model_7/sequential_15/conv2d_56/ReluО
,model_7/sequential_15/up_sampling2d_33/ShapeShape2model_7/sequential_15/conv2d_56/Relu:activations:0*
T0*
_output_shapes
:2.
,model_7/sequential_15/up_sampling2d_33/ShapeТ
:model_7/sequential_15/up_sampling2d_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:model_7/sequential_15/up_sampling2d_33/strided_slice/stackЦ
<model_7/sequential_15/up_sampling2d_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_7/sequential_15/up_sampling2d_33/strided_slice/stack_1Ц
<model_7/sequential_15/up_sampling2d_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_7/sequential_15/up_sampling2d_33/strided_slice/stack_2И
4model_7/sequential_15/up_sampling2d_33/strided_sliceStridedSlice5model_7/sequential_15/up_sampling2d_33/Shape:output:0Cmodel_7/sequential_15/up_sampling2d_33/strided_slice/stack:output:0Emodel_7/sequential_15/up_sampling2d_33/strided_slice/stack_1:output:0Emodel_7/sequential_15/up_sampling2d_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:26
4model_7/sequential_15/up_sampling2d_33/strided_slice­
,model_7/sequential_15/up_sampling2d_33/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2.
,model_7/sequential_15/up_sampling2d_33/Constњ
*model_7/sequential_15/up_sampling2d_33/mulMul=model_7/sequential_15/up_sampling2d_33/strided_slice:output:05model_7/sequential_15/up_sampling2d_33/Const:output:0*
T0*
_output_shapes
:2,
*model_7/sequential_15/up_sampling2d_33/mulл
Cmodel_7/sequential_15/up_sampling2d_33/resize/ResizeNearestNeighborResizeNearestNeighbor2model_7/sequential_15/conv2d_56/Relu:activations:0.model_7/sequential_15/up_sampling2d_33/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
half_pixel_centers(2E
Cmodel_7/sequential_15/up_sampling2d_33/resize/ResizeNearestNeighborѕ
5model_7/sequential_15/conv2d_57/Conv2D/ReadVariableOpReadVariableOp>model_7_sequential_15_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype027
5model_7/sequential_15/conv2d_57/Conv2D/ReadVariableOpб
&model_7/sequential_15/conv2d_57/Conv2DConv2DTmodel_7/sequential_15/up_sampling2d_33/resize/ResizeNearestNeighbor:resized_images:0=model_7/sequential_15/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2(
&model_7/sequential_15/conv2d_57/Conv2Dь
6model_7/sequential_15/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp?model_7_sequential_15_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6model_7/sequential_15/conv2d_57/BiasAdd/ReadVariableOp
'model_7/sequential_15/conv2d_57/BiasAddBiasAdd/model_7/sequential_15/conv2d_57/Conv2D:output:0>model_7/sequential_15/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2)
'model_7/sequential_15/conv2d_57/BiasAddР
$model_7/sequential_15/conv2d_57/ReluRelu0model_7/sequential_15/conv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2&
$model_7/sequential_15/conv2d_57/ReluО
,model_7/sequential_15/up_sampling2d_34/ShapeShape2model_7/sequential_15/conv2d_57/Relu:activations:0*
T0*
_output_shapes
:2.
,model_7/sequential_15/up_sampling2d_34/ShapeТ
:model_7/sequential_15/up_sampling2d_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:model_7/sequential_15/up_sampling2d_34/strided_slice/stackЦ
<model_7/sequential_15/up_sampling2d_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_7/sequential_15/up_sampling2d_34/strided_slice/stack_1Ц
<model_7/sequential_15/up_sampling2d_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_7/sequential_15/up_sampling2d_34/strided_slice/stack_2И
4model_7/sequential_15/up_sampling2d_34/strided_sliceStridedSlice5model_7/sequential_15/up_sampling2d_34/Shape:output:0Cmodel_7/sequential_15/up_sampling2d_34/strided_slice/stack:output:0Emodel_7/sequential_15/up_sampling2d_34/strided_slice/stack_1:output:0Emodel_7/sequential_15/up_sampling2d_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:26
4model_7/sequential_15/up_sampling2d_34/strided_slice­
,model_7/sequential_15/up_sampling2d_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2.
,model_7/sequential_15/up_sampling2d_34/Constњ
*model_7/sequential_15/up_sampling2d_34/mulMul=model_7/sequential_15/up_sampling2d_34/strided_slice:output:05model_7/sequential_15/up_sampling2d_34/Const:output:0*
T0*
_output_shapes
:2,
*model_7/sequential_15/up_sampling2d_34/mulн
Cmodel_7/sequential_15/up_sampling2d_34/resize/ResizeNearestNeighborResizeNearestNeighbor2model_7/sequential_15/conv2d_57/Relu:activations:0.model_7/sequential_15/up_sampling2d_34/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(2E
Cmodel_7/sequential_15/up_sampling2d_34/resize/ResizeNearestNeighborѕ
5model_7/sequential_15/conv2d_58/Conv2D/ReadVariableOpReadVariableOp>model_7_sequential_15_conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype027
5model_7/sequential_15/conv2d_58/Conv2D/ReadVariableOpг
&model_7/sequential_15/conv2d_58/Conv2DConv2DTmodel_7/sequential_15/up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:0=model_7/sequential_15/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2(
&model_7/sequential_15/conv2d_58/Conv2Dь
6model_7/sequential_15/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp?model_7_sequential_15_conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6model_7/sequential_15/conv2d_58/BiasAdd/ReadVariableOp
'model_7/sequential_15/conv2d_58/BiasAddBiasAdd/model_7/sequential_15/conv2d_58/Conv2D:output:0>model_7/sequential_15/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ2)
'model_7/sequential_15/conv2d_58/BiasAddЫ
'model_7/sequential_15/conv2d_58/SigmoidSigmoid0model_7/sequential_15/conv2d_58/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ2)
'model_7/sequential_15/conv2d_58/Sigmoidu
model_7/lambda_4/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
model_7/lambda_4/add/xЌ
model_7/lambda_4/addAddV2model_7/lambda_4/add/x:output:0"model_7/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_7/lambda_4/add
model_7/lambda_4/SquareSquaremodel_7/z_mean/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_7/lambda_4/Square
model_7/lambda_4/subSubmodel_7/lambda_4/add:z:0model_7/lambda_4/Square:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_7/lambda_4/sub
model_7/lambda_4/ExpExpmodel_7/z_mean/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_7/lambda_4/Exp
model_7/lambda_4/sub_1Submodel_7/lambda_4/sub:z:0model_7/lambda_4/Exp:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_7/lambda_4/sub_1u
model_7/lambda_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   П2
model_7/lambda_4/mul/xЂ
model_7/lambda_4/mulMulmodel_7/lambda_4/mul/x:output:0model_7/lambda_4/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_7/lambda_4/mul
&model_7/lambda_4/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2(
&model_7/lambda_4/Sum/reduction_indicesЌ
model_7/lambda_4/SumSummodel_7/lambda_4/mul:z:0/model_7/lambda_4/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
model_7/lambda_4/Sumz
model_7/lambda_4/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
model_7/lambda_4/Const
model_7/lambda_4/MeanMeanmodel_7/lambda_4/Sum:output:0model_7/lambda_4/Const:output:0*
T0*
_output_shapes
: 2
model_7/lambda_4/Meanл

IdentityIdentity+model_7/sequential_15/conv2d_58/Sigmoid:y:0(^model_7/dense_17/BiasAdd/ReadVariableOp'^model_7/dense_17/MatMul/ReadVariableOp(^model_7/dense_18/BiasAdd/ReadVariableOp'^model_7/dense_18/MatMul/ReadVariableOp7^model_7/sequential_14/conv2d_51/BiasAdd/ReadVariableOp6^model_7/sequential_14/conv2d_51/Conv2D/ReadVariableOp7^model_7/sequential_14/conv2d_52/BiasAdd/ReadVariableOp6^model_7/sequential_14/conv2d_52/Conv2D/ReadVariableOp7^model_7/sequential_14/conv2d_53/BiasAdd/ReadVariableOp6^model_7/sequential_14/conv2d_53/Conv2D/ReadVariableOp7^model_7/sequential_15/conv2d_54/BiasAdd/ReadVariableOp6^model_7/sequential_15/conv2d_54/Conv2D/ReadVariableOp7^model_7/sequential_15/conv2d_55/BiasAdd/ReadVariableOp6^model_7/sequential_15/conv2d_55/Conv2D/ReadVariableOp7^model_7/sequential_15/conv2d_56/BiasAdd/ReadVariableOp6^model_7/sequential_15/conv2d_56/Conv2D/ReadVariableOp7^model_7/sequential_15/conv2d_57/BiasAdd/ReadVariableOp6^model_7/sequential_15/conv2d_57/Conv2D/ReadVariableOp7^model_7/sequential_15/conv2d_58/BiasAdd/ReadVariableOp6^model_7/sequential_15/conv2d_58/Conv2D/ReadVariableOp)^model_7/z_log_var/BiasAdd/ReadVariableOp(^model_7/z_log_var/MatMul/ReadVariableOp&^model_7/z_mean/BiasAdd/ReadVariableOp%^model_7/z_mean/MatMul/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Ї
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::::::::::::: ::::::::::::2R
'model_7/dense_17/BiasAdd/ReadVariableOp'model_7/dense_17/BiasAdd/ReadVariableOp2P
&model_7/dense_17/MatMul/ReadVariableOp&model_7/dense_17/MatMul/ReadVariableOp2R
'model_7/dense_18/BiasAdd/ReadVariableOp'model_7/dense_18/BiasAdd/ReadVariableOp2P
&model_7/dense_18/MatMul/ReadVariableOp&model_7/dense_18/MatMul/ReadVariableOp2p
6model_7/sequential_14/conv2d_51/BiasAdd/ReadVariableOp6model_7/sequential_14/conv2d_51/BiasAdd/ReadVariableOp2n
5model_7/sequential_14/conv2d_51/Conv2D/ReadVariableOp5model_7/sequential_14/conv2d_51/Conv2D/ReadVariableOp2p
6model_7/sequential_14/conv2d_52/BiasAdd/ReadVariableOp6model_7/sequential_14/conv2d_52/BiasAdd/ReadVariableOp2n
5model_7/sequential_14/conv2d_52/Conv2D/ReadVariableOp5model_7/sequential_14/conv2d_52/Conv2D/ReadVariableOp2p
6model_7/sequential_14/conv2d_53/BiasAdd/ReadVariableOp6model_7/sequential_14/conv2d_53/BiasAdd/ReadVariableOp2n
5model_7/sequential_14/conv2d_53/Conv2D/ReadVariableOp5model_7/sequential_14/conv2d_53/Conv2D/ReadVariableOp2p
6model_7/sequential_15/conv2d_54/BiasAdd/ReadVariableOp6model_7/sequential_15/conv2d_54/BiasAdd/ReadVariableOp2n
5model_7/sequential_15/conv2d_54/Conv2D/ReadVariableOp5model_7/sequential_15/conv2d_54/Conv2D/ReadVariableOp2p
6model_7/sequential_15/conv2d_55/BiasAdd/ReadVariableOp6model_7/sequential_15/conv2d_55/BiasAdd/ReadVariableOp2n
5model_7/sequential_15/conv2d_55/Conv2D/ReadVariableOp5model_7/sequential_15/conv2d_55/Conv2D/ReadVariableOp2p
6model_7/sequential_15/conv2d_56/BiasAdd/ReadVariableOp6model_7/sequential_15/conv2d_56/BiasAdd/ReadVariableOp2n
5model_7/sequential_15/conv2d_56/Conv2D/ReadVariableOp5model_7/sequential_15/conv2d_56/Conv2D/ReadVariableOp2p
6model_7/sequential_15/conv2d_57/BiasAdd/ReadVariableOp6model_7/sequential_15/conv2d_57/BiasAdd/ReadVariableOp2n
5model_7/sequential_15/conv2d_57/Conv2D/ReadVariableOp5model_7/sequential_15/conv2d_57/Conv2D/ReadVariableOp2p
6model_7/sequential_15/conv2d_58/BiasAdd/ReadVariableOp6model_7/sequential_15/conv2d_58/BiasAdd/ReadVariableOp2n
5model_7/sequential_15/conv2d_58/Conv2D/ReadVariableOp5model_7/sequential_15/conv2d_58/Conv2D/ReadVariableOp2T
(model_7/z_log_var/BiasAdd/ReadVariableOp(model_7/z_log_var/BiasAdd/ReadVariableOp2R
'model_7/z_log_var/MatMul/ReadVariableOp'model_7/z_log_var/MatMul/ReadVariableOp2N
%model_7/z_mean/BiasAdd/ReadVariableOp%model_7/z_mean/BiasAdd/ReadVariableOp2L
$model_7/z_mean/MatMul/ReadVariableOp$model_7/z_mean/MatMul/ReadVariableOp:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_19:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_20:

_output_shapes
: 
М
`
D__inference_flatten_6_layer_call_and_return_conditional_losses_56174

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ђ
Y
-__inference_concatenate_7_layer_call_fn_57588
inputs_0
inputs_1
identityж
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_563012
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
Я
c
D__inference_dropout_9_layer_call_and_return_conditional_losses_57964

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЂМ?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЩ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
dtype0*
seedк2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=2
dropout/GreaterEqual/yЦ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Щ
ѕ
H__inference_sequential_14_layer_call_and_return_conditional_losses_55671

inputs
conv2d_51_55654
conv2d_51_55656
conv2d_52_55659
conv2d_52_55661
conv2d_53_55664
conv2d_53_55666
identityЂ!conv2d_51/StatefulPartitionedCallЂ!conv2d_52/StatefulPartitionedCallЂ!conv2d_53/StatefulPartitionedCallЂ!dropout_9/StatefulPartitionedCallЁ
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_51_55654conv2d_51_55656*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_555272#
!conv2d_51/StatefulPartitionedCallХ
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0conv2d_52_55659conv2d_52_55661*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_555542#
!conv2d_52/StatefulPartitionedCallХ
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_55664conv2d_53_55666*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_555812#
!conv2d_53/StatefulPartitionedCall
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_556092#
!dropout_9/StatefulPartitionedCall
IdentityIdentity*dropout_9/StatefulPartitionedCall:output:0"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:џџџџџџџџџ::::::2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ж
F
*__inference_add_loss_4_layer_call_fn_57892

inputs
identityИ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_add_loss_4_layer_call_and_return_conditional_losses_564842
PartitionedCall[
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: :> :

_output_shapes
: 
 
_user_specified_nameinputs

б
H__inference_sequential_14_layer_call_and_return_conditional_losses_55708

inputs
conv2d_51_55691
conv2d_51_55693
conv2d_52_55696
conv2d_52_55698
conv2d_53_55701
conv2d_53_55703
identityЂ!conv2d_51/StatefulPartitionedCallЂ!conv2d_52/StatefulPartitionedCallЂ!conv2d_53/StatefulPartitionedCallЁ
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_51_55691conv2d_51_55693*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_555272#
!conv2d_51/StatefulPartitionedCallХ
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0conv2d_52_55696conv2d_52_55698*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_555542#
!conv2d_52/StatefulPartitionedCallХ
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_55701conv2d_53_55703*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_555812#
!conv2d_53/StatefulPartitionedCall
dropout_9/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_556142
dropout_9/PartitionedCallъ
IdentityIdentity"dropout_9/PartitionedCall:output:0"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:џџџџџџџџџ::::::2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

o
C__inference_lambda_4_layer_call_and_return_conditional_losses_57852
inputs_0
inputs_1
identityS
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
add/x_
addAddV2add/x:output:0inputs_0*
T0*'
_output_shapes
:џџџџџџџџџ2
addV
SquareSquareinputs_1*
T0*'
_output_shapes
:џџџџџџџџџ2
SquareX
subSubadd:z:0
Square:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
subM
ExpExpinputs_1*
T0*'
_output_shapes
:џџџџџџџџџ2
ExpY
sub_1Subsub:z:0Exp:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sub_1S
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   П2
mul/x^
mulMulmul/x:output:0	sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
Sum/reduction_indicesh
SumSummul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
SumX
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstS
MeanMeanSum:output:0Const:output:0*
T0*
_output_shapes
: 2
MeanP
IdentityIdentityMean:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1

g
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_55774

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ю
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulе
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(2
resize/ResizeNearestNeighborЄ
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ц
ѓ
'__inference_model_7_layer_call_fn_56724
input_19
input_20
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

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23
identityЂStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinput_19input_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*&
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: *:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_7_layer_call_and_return_conditional_losses_566702
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*Ї
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::::::::::::: ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_19:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_20:

_output_shapes
: 
Иn

H__inference_sequential_15_layer_call_and_return_conditional_losses_57706

inputs,
(conv2d_54_conv2d_readvariableop_resource-
)conv2d_54_biasadd_readvariableop_resource,
(conv2d_55_conv2d_readvariableop_resource-
)conv2d_55_biasadd_readvariableop_resource,
(conv2d_56_conv2d_readvariableop_resource-
)conv2d_56_biasadd_readvariableop_resource,
(conv2d_57_conv2d_readvariableop_resource-
)conv2d_57_biasadd_readvariableop_resource,
(conv2d_58_conv2d_readvariableop_resource-
)conv2d_58_biasadd_readvariableop_resource
identityЂ conv2d_54/BiasAdd/ReadVariableOpЂconv2d_54/Conv2D/ReadVariableOpЂ conv2d_55/BiasAdd/ReadVariableOpЂconv2d_55/Conv2D/ReadVariableOpЂ conv2d_56/BiasAdd/ReadVariableOpЂconv2d_56/Conv2D/ReadVariableOpЂ conv2d_57/BiasAdd/ReadVariableOpЂconv2d_57/Conv2D/ReadVariableOpЂ conv2d_58/BiasAdd/ReadVariableOpЂconv2d_58/Conv2D/ReadVariableOpf
up_sampling2d_30/ShapeShapeinputs*
T0*
_output_shapes
:2
up_sampling2d_30/Shape
$up_sampling2d_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_30/strided_slice/stack
&up_sampling2d_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_30/strided_slice/stack_1
&up_sampling2d_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_30/strided_slice/stack_2Д
up_sampling2d_30/strided_sliceStridedSliceup_sampling2d_30/Shape:output:0-up_sampling2d_30/strided_slice/stack:output:0/up_sampling2d_30/strided_slice/stack_1:output:0/up_sampling2d_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_30/strided_slice
up_sampling2d_30/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_30/ConstЂ
up_sampling2d_30/mulMul'up_sampling2d_30/strided_slice:output:0up_sampling2d_30/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_30/mulэ
-up_sampling2d_30/resize/ResizeNearestNeighborResizeNearestNeighborinputsup_sampling2d_30/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
half_pixel_centers(2/
-up_sampling2d_30/resize/ResizeNearestNeighborГ
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_54/Conv2D/ReadVariableOpљ
conv2d_54/Conv2DConv2D>up_sampling2d_30/resize/ResizeNearestNeighbor:resized_images:0'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_54/Conv2DЊ
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_54/BiasAdd/ReadVariableOpА
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_54/BiasAdd~
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_54/Relu|
up_sampling2d_31/ShapeShapeconv2d_54/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_31/Shape
$up_sampling2d_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_31/strided_slice/stack
&up_sampling2d_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_31/strided_slice/stack_1
&up_sampling2d_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_31/strided_slice/stack_2Д
up_sampling2d_31/strided_sliceStridedSliceup_sampling2d_31/Shape:output:0-up_sampling2d_31/strided_slice/stack:output:0/up_sampling2d_31/strided_slice/stack_1:output:0/up_sampling2d_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_31/strided_slice
up_sampling2d_31/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_31/ConstЂ
up_sampling2d_31/mulMul'up_sampling2d_31/strided_slice:output:0up_sampling2d_31/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_31/mul
-up_sampling2d_31/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_54/Relu:activations:0up_sampling2d_31/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(2/
-up_sampling2d_31/resize/ResizeNearestNeighborГ
conv2d_55/Conv2D/ReadVariableOpReadVariableOp(conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_55/Conv2D/ReadVariableOpљ
conv2d_55/Conv2DConv2D>up_sampling2d_31/resize/ResizeNearestNeighbor:resized_images:0'conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_55/Conv2DЊ
 conv2d_55/BiasAdd/ReadVariableOpReadVariableOp)conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_55/BiasAdd/ReadVariableOpА
conv2d_55/BiasAddBiasAddconv2d_55/Conv2D:output:0(conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_55/BiasAdd~
conv2d_55/ReluReluconv2d_55/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_55/Relu|
up_sampling2d_32/ShapeShapeconv2d_55/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_32/Shape
$up_sampling2d_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_32/strided_slice/stack
&up_sampling2d_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_32/strided_slice/stack_1
&up_sampling2d_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_32/strided_slice/stack_2Д
up_sampling2d_32/strided_sliceStridedSliceup_sampling2d_32/Shape:output:0-up_sampling2d_32/strided_slice/stack:output:0/up_sampling2d_32/strided_slice/stack_1:output:0/up_sampling2d_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_32/strided_slice
up_sampling2d_32/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_32/ConstЂ
up_sampling2d_32/mulMul'up_sampling2d_32/strided_slice:output:0up_sampling2d_32/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_32/mul
-up_sampling2d_32/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_55/Relu:activations:0up_sampling2d_32/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
half_pixel_centers(2/
-up_sampling2d_32/resize/ResizeNearestNeighborГ
conv2d_56/Conv2D/ReadVariableOpReadVariableOp(conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_56/Conv2D/ReadVariableOpљ
conv2d_56/Conv2DConv2D>up_sampling2d_32/resize/ResizeNearestNeighbor:resized_images:0'conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
conv2d_56/Conv2DЊ
 conv2d_56/BiasAdd/ReadVariableOpReadVariableOp)conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_56/BiasAdd/ReadVariableOpА
conv2d_56/BiasAddBiasAddconv2d_56/Conv2D:output:0(conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_56/BiasAdd~
conv2d_56/ReluReluconv2d_56/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_56/Relu|
up_sampling2d_33/ShapeShapeconv2d_56/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_33/Shape
$up_sampling2d_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_33/strided_slice/stack
&up_sampling2d_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_33/strided_slice/stack_1
&up_sampling2d_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_33/strided_slice/stack_2Д
up_sampling2d_33/strided_sliceStridedSliceup_sampling2d_33/Shape:output:0-up_sampling2d_33/strided_slice/stack:output:0/up_sampling2d_33/strided_slice/stack_1:output:0/up_sampling2d_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_33/strided_slice
up_sampling2d_33/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_33/ConstЂ
up_sampling2d_33/mulMul'up_sampling2d_33/strided_slice:output:0up_sampling2d_33/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_33/mul
-up_sampling2d_33/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_56/Relu:activations:0up_sampling2d_33/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
half_pixel_centers(2/
-up_sampling2d_33/resize/ResizeNearestNeighborГ
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_57/Conv2D/ReadVariableOpљ
conv2d_57/Conv2DConv2D>up_sampling2d_33/resize/ResizeNearestNeighbor:resized_images:0'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2
conv2d_57/Conv2DЊ
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_57/BiasAdd/ReadVariableOpА
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
conv2d_57/BiasAdd~
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
conv2d_57/Relu|
up_sampling2d_34/ShapeShapeconv2d_57/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_34/Shape
$up_sampling2d_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$up_sampling2d_34/strided_slice/stack
&up_sampling2d_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_34/strided_slice/stack_1
&up_sampling2d_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&up_sampling2d_34/strided_slice/stack_2Д
up_sampling2d_34/strided_sliceStridedSliceup_sampling2d_34/Shape:output:0-up_sampling2d_34/strided_slice/stack:output:0/up_sampling2d_34/strided_slice/stack_1:output:0/up_sampling2d_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2 
up_sampling2d_34/strided_slice
up_sampling2d_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_34/ConstЂ
up_sampling2d_34/mulMul'up_sampling2d_34/strided_slice:output:0up_sampling2d_34/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_34/mul
-up_sampling2d_34/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_57/Relu:activations:0up_sampling2d_34/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(2/
-up_sampling2d_34/resize/ResizeNearestNeighborГ
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_58/Conv2D/ReadVariableOpћ
conv2d_58/Conv2DConv2D>up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:0'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_58/Conv2DЊ
 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_58/BiasAdd/ReadVariableOpВ
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ2
conv2d_58/BiasAdd
conv2d_58/SigmoidSigmoidconv2d_58/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ2
conv2d_58/SigmoidЬ
IdentityIdentityconv2d_58/Sigmoid:y:0!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^conv2d_55/BiasAdd/ReadVariableOp ^conv2d_55/Conv2D/ReadVariableOp!^conv2d_56/BiasAdd/ReadVariableOp ^conv2d_56/Conv2D/ReadVariableOp!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ@::::::::::2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 conv2d_55/BiasAdd/ReadVariableOp conv2d_55/BiasAdd/ReadVariableOp2B
conv2d_55/Conv2D/ReadVariableOpconv2d_55/Conv2D/ReadVariableOp2D
 conv2d_56/BiasAdd/ReadVariableOp conv2d_56/BiasAdd/ReadVariableOp2B
conv2d_56/Conv2D/ReadVariableOpconv2d_56/Conv2D/ReadVariableOp2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ц
ѓ
'__inference_model_7_layer_call_fn_57401
inputs_0
inputs_1
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

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23
identityЂStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*&
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: *:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_7_layer_call_and_return_conditional_losses_568122
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*Ї
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::::::::::::: ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:

_output_shapes
: 
.
я
H__inference_sequential_15_layer_call_and_return_conditional_losses_55997
input_18
conv2d_54_55967
conv2d_54_55969
conv2d_55_55973
conv2d_55_55975
conv2d_56_55979
conv2d_56_55981
conv2d_57_55985
conv2d_57_55987
conv2d_58_55991
conv2d_58_55993
identityЂ!conv2d_54/StatefulPartitionedCallЂ!conv2d_55/StatefulPartitionedCallЂ!conv2d_56/StatefulPartitionedCallЂ!conv2d_57/StatefulPartitionedCallЂ!conv2d_58/StatefulPartitionedCall
 up_sampling2d_30/PartitionedCallPartitionedCallinput_18*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_30_layer_call_and_return_conditional_losses_557362"
 up_sampling2d_30/PartitionedCallж
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_30/PartitionedCall:output:0conv2d_54_55967conv2d_54_55969*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_558342#
!conv2d_54/StatefulPartitionedCallЌ
 up_sampling2d_31/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_31_layer_call_and_return_conditional_losses_557552"
 up_sampling2d_31/PartitionedCallж
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_31/PartitionedCall:output:0conv2d_55_55973conv2d_55_55975*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_558622#
!conv2d_55/StatefulPartitionedCallЌ
 up_sampling2d_32/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_557742"
 up_sampling2d_32/PartitionedCallж
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_32/PartitionedCall:output:0conv2d_56_55979conv2d_56_55981*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_558902#
!conv2d_56/StatefulPartitionedCallЌ
 up_sampling2d_33/PartitionedCallPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_557932"
 up_sampling2d_33/PartitionedCallж
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_33/PartitionedCall:output:0conv2d_57_55985conv2d_57_55987*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_559182#
!conv2d_57/StatefulPartitionedCallЌ
 up_sampling2d_34/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_558122"
 up_sampling2d_34/PartitionedCallж
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_34/PartitionedCall:output:0conv2d_58_55991conv2d_58_55993*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_559462#
!conv2d_58/StatefulPartitionedCallЬ
IdentityIdentity*conv2d_58/StatefulPartitionedCall:output:0"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ@::::::::::2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall:Y U
/
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
input_18
ЁY
І
B__inference_model_7_layer_call_and_return_conditional_losses_56812

inputs
inputs_1
sequential_14_56731
sequential_14_56733
sequential_14_56735
sequential_14_56737
sequential_14_56739
sequential_14_56741
dense_17_56746
dense_17_56748
z_mean_56751
z_mean_56753
z_log_var_56756
z_log_var_56758
tf_math_multiply_8_mul_x
dense_18_56780
dense_18_56782
sequential_15_56786
sequential_15_56788
sequential_15_56790
sequential_15_56792
sequential_15_56794
sequential_15_56796
sequential_15_56798
sequential_15_56800
sequential_15_56802
sequential_15_56804
identity

identity_1Ђ dense_17/StatefulPartitionedCallЂ dense_18/StatefulPartitionedCallЂ%sequential_14/StatefulPartitionedCallЂ%sequential_15/StatefulPartitionedCallЂ!z_log_var/StatefulPartitionedCallЂz_mean/StatefulPartitionedCall
%sequential_14/StatefulPartitionedCallStatefulPartitionedCallinputssequential_14_56731sequential_14_56733sequential_14_56735sequential_14_56737sequential_14_56739sequential_14_56741*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_557082'
%sequential_14/StatefulPartitionedCall
flatten_6/PartitionedCallPartitionedCall.sequential_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_561742
flatten_6/PartitionedCall
concatenate_6/PartitionedCallPartitionedCall"flatten_6/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_6_layer_call_and_return_conditional_losses_561892
concatenate_6/PartitionedCallЕ
 dense_17/StatefulPartitionedCallStatefulPartitionedCall&concatenate_6/PartitionedCall:output:0dense_17_56746dense_17_56748*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_562082"
 dense_17/StatefulPartitionedCall­
z_mean/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0z_mean_56751z_mean_56753*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_z_mean_layer_call_and_return_conditional_losses_562342 
z_mean/StatefulPartitionedCallМ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0z_log_var_56756z_log_var_56758*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_z_log_var_layer_call_and_return_conditional_losses_562602#
!z_log_var/StatefulPartitionedCall
tf.compat.v1.shape_4/ShapeShape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape_4/ShapeЊ
.tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_8/strided_slice/stackЎ
0tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_8/strided_slice/stack_1Ў
0tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_8/strided_slice/stack_2ў
(tf.__operators__.getitem_8/strided_sliceStridedSlice#tf.compat.v1.shape_4/Shape:output:07tf.__operators__.getitem_8/strided_slice/stack:output:09tf.__operators__.getitem_8/strided_slice/stack_1:output:09tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_8/strided_sliceЊ
.tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.tf.__operators__.getitem_9/strided_slice/stackЎ
0tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_9/strided_slice/stack_1Ў
0tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_9/strided_slice/stack_2ў
(tf.__operators__.getitem_9/strided_sliceStridedSlice#tf.compat.v1.shape_4/Shape:output:07tf.__operators__.getitem_9/strided_slice/stack:output:09tf.__operators__.getitem_9/strided_slice/stack_1:output:09tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_9/strided_sliceЏ
tf.math.multiply_8/MulMultf_math_multiply_8_mul_x*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.multiply_8/Mul{
tf.math.exp_4/ExpExptf.math.multiply_8/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.exp_4/Expь
&tf.random.normal_4/random_normal/shapePack1tf.__operators__.getitem_8/strided_slice:output:01tf.__operators__.getitem_9/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&tf.random.normal_4/random_normal/shape
5tf.random.normal_4/random_normal/RandomStandardNormalRandomStandardNormal/tf.random.normal_4/random_normal/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
dtype0*
seedк27
5tf.random.normal_4/random_normal/RandomStandardNormalё
$tf.random.normal_4/random_normal/mulMul>tf.random.normal_4/random_normal/RandomStandardNormal:output:0*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2&
$tf.random.normal_4/random_normal/mulа
 tf.random.normal_4/random_normalAdd(tf.random.normal_4/random_normal/mul:z:0'z_mean/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 tf.random.normal_4/random_normalІ
tf.math.multiply_9/MulMultf.math.exp_4/Exp:y:0$tf.random.normal_4/random_normal:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.multiply_9/MulМ
tf.__operators__.add_4/AddV2AddV2'z_mean/StatefulPartitionedCall:output:0tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.__operators__.add_4/AddV2
concatenate_7/PartitionedCallPartitionedCall tf.__operators__.add_4/AddV2:z:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_563012
concatenate_7/PartitionedCallЕ
 dense_18/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0dense_18_56780dense_18_56782*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_18_layer_call_and_return_conditional_losses_563212"
 dense_18/StatefulPartitionedCall
reshape_6/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_reshape_6_layer_call_and_return_conditional_losses_563512
reshape_6/PartitionedCall
%sequential_15/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0sequential_15_56786sequential_15_56788sequential_15_56790sequential_15_56792sequential_15_56794sequential_15_56796sequential_15_56798sequential_15_56800sequential_15_56802sequential_15_56804*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_560932'
%sequential_15/StatefulPartitionedCall
lambda_4/PartitionedCallPartitionedCall*z_log_var/StatefulPartitionedCall:output:0'z_mean/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8 *L
fGRE
C__inference_lambda_4_layer_call_and_return_conditional_losses_564642
lambda_4/PartitionedCallщ
add_loss_4/PartitionedCallPartitionedCall!lambda_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_add_loss_4_layer_call_and_return_conditional_losses_564842
add_loss_4/PartitionedCallї
IdentityIdentity.sequential_15/StatefulPartitionedCall:output:0!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall&^sequential_14/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

IdentityХ

Identity_1Identity#add_loss_4/PartitionedCall:output:1!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall&^sequential_14/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ї
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::::::::::::: ::::::::::::2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2N
%sequential_14/StatefulPartitionedCall%sequential_14/StatefulPartitionedCall2N
%sequential_15/StatefulPartitionedCall%sequential_15/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: 
І
q
E__inference_add_loss_4_layer_call_and_return_conditional_losses_56484

inputs
identity

identity_1I
IdentityIdentityinputs*
T0*
_output_shapes
: 2

IdentityM

Identity_1Identityinputs*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes
: :> :

_output_shapes
: 
 
_user_specified_nameinputs
Ќ	
њ
-__inference_sequential_15_layer_call_fn_57810

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
	unknown_8
identityЂStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_560342
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ@::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ћ-
э
H__inference_sequential_15_layer_call_and_return_conditional_losses_56034

inputs
conv2d_54_56004
conv2d_54_56006
conv2d_55_56010
conv2d_55_56012
conv2d_56_56016
conv2d_56_56018
conv2d_57_56022
conv2d_57_56024
conv2d_58_56028
conv2d_58_56030
identityЂ!conv2d_54/StatefulPartitionedCallЂ!conv2d_55/StatefulPartitionedCallЂ!conv2d_56/StatefulPartitionedCallЂ!conv2d_57/StatefulPartitionedCallЂ!conv2d_58/StatefulPartitionedCall
 up_sampling2d_30/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_30_layer_call_and_return_conditional_losses_557362"
 up_sampling2d_30/PartitionedCallж
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_30/PartitionedCall:output:0conv2d_54_56004conv2d_54_56006*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_558342#
!conv2d_54/StatefulPartitionedCallЌ
 up_sampling2d_31/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_31_layer_call_and_return_conditional_losses_557552"
 up_sampling2d_31/PartitionedCallж
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_31/PartitionedCall:output:0conv2d_55_56010conv2d_55_56012*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_558622#
!conv2d_55/StatefulPartitionedCallЌ
 up_sampling2d_32/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_557742"
 up_sampling2d_32/PartitionedCallж
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_32/PartitionedCall:output:0conv2d_56_56016conv2d_56_56018*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_558902#
!conv2d_56/StatefulPartitionedCallЌ
 up_sampling2d_33/PartitionedCallPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_557932"
 up_sampling2d_33/PartitionedCallж
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_33/PartitionedCall:output:0conv2d_57_56022conv2d_57_56024*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_559182#
!conv2d_57/StatefulPartitionedCallЌ
 up_sampling2d_34/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_558122"
 up_sampling2d_34/PartitionedCallж
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_34/PartitionedCall:output:0conv2d_58_56028conv2d_58_56030*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_559462#
!conv2d_58/StatefulPartitionedCallЬ
IdentityIdentity*conv2d_58/StatefulPartitionedCall:output:0"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ@::::::::::2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ЁY
І
B__inference_model_7_layer_call_and_return_conditional_losses_56670

inputs
inputs_1
sequential_14_56589
sequential_14_56591
sequential_14_56593
sequential_14_56595
sequential_14_56597
sequential_14_56599
dense_17_56604
dense_17_56606
z_mean_56609
z_mean_56611
z_log_var_56614
z_log_var_56616
tf_math_multiply_8_mul_x
dense_18_56638
dense_18_56640
sequential_15_56644
sequential_15_56646
sequential_15_56648
sequential_15_56650
sequential_15_56652
sequential_15_56654
sequential_15_56656
sequential_15_56658
sequential_15_56660
sequential_15_56662
identity

identity_1Ђ dense_17/StatefulPartitionedCallЂ dense_18/StatefulPartitionedCallЂ%sequential_14/StatefulPartitionedCallЂ%sequential_15/StatefulPartitionedCallЂ!z_log_var/StatefulPartitionedCallЂz_mean/StatefulPartitionedCall
%sequential_14/StatefulPartitionedCallStatefulPartitionedCallinputssequential_14_56589sequential_14_56591sequential_14_56593sequential_14_56595sequential_14_56597sequential_14_56599*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_556712'
%sequential_14/StatefulPartitionedCall
flatten_6/PartitionedCallPartitionedCall.sequential_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_561742
flatten_6/PartitionedCall
concatenate_6/PartitionedCallPartitionedCall"flatten_6/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_6_layer_call_and_return_conditional_losses_561892
concatenate_6/PartitionedCallЕ
 dense_17/StatefulPartitionedCallStatefulPartitionedCall&concatenate_6/PartitionedCall:output:0dense_17_56604dense_17_56606*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_562082"
 dense_17/StatefulPartitionedCall­
z_mean/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0z_mean_56609z_mean_56611*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_z_mean_layer_call_and_return_conditional_losses_562342 
z_mean/StatefulPartitionedCallМ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0z_log_var_56614z_log_var_56616*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_z_log_var_layer_call_and_return_conditional_losses_562602#
!z_log_var/StatefulPartitionedCall
tf.compat.v1.shape_4/ShapeShape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape_4/ShapeЊ
.tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_8/strided_slice/stackЎ
0tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_8/strided_slice/stack_1Ў
0tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_8/strided_slice/stack_2ў
(tf.__operators__.getitem_8/strided_sliceStridedSlice#tf.compat.v1.shape_4/Shape:output:07tf.__operators__.getitem_8/strided_slice/stack:output:09tf.__operators__.getitem_8/strided_slice/stack_1:output:09tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_8/strided_sliceЊ
.tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.tf.__operators__.getitem_9/strided_slice/stackЎ
0tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_9/strided_slice/stack_1Ў
0tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_9/strided_slice/stack_2ў
(tf.__operators__.getitem_9/strided_sliceStridedSlice#tf.compat.v1.shape_4/Shape:output:07tf.__operators__.getitem_9/strided_slice/stack:output:09tf.__operators__.getitem_9/strided_slice/stack_1:output:09tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_9/strided_sliceЏ
tf.math.multiply_8/MulMultf_math_multiply_8_mul_x*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.multiply_8/Mul{
tf.math.exp_4/ExpExptf.math.multiply_8/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.exp_4/Expь
&tf.random.normal_4/random_normal/shapePack1tf.__operators__.getitem_8/strided_slice:output:01tf.__operators__.getitem_9/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&tf.random.normal_4/random_normal/shape
5tf.random.normal_4/random_normal/RandomStandardNormalRandomStandardNormal/tf.random.normal_4/random_normal/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
dtype0*
seedк27
5tf.random.normal_4/random_normal/RandomStandardNormalё
$tf.random.normal_4/random_normal/mulMul>tf.random.normal_4/random_normal/RandomStandardNormal:output:0*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2&
$tf.random.normal_4/random_normal/mulа
 tf.random.normal_4/random_normalAdd(tf.random.normal_4/random_normal/mul:z:0'z_mean/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 tf.random.normal_4/random_normalІ
tf.math.multiply_9/MulMultf.math.exp_4/Exp:y:0$tf.random.normal_4/random_normal:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.multiply_9/MulМ
tf.__operators__.add_4/AddV2AddV2'z_mean/StatefulPartitionedCall:output:0tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.__operators__.add_4/AddV2
concatenate_7/PartitionedCallPartitionedCall tf.__operators__.add_4/AddV2:z:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_563012
concatenate_7/PartitionedCallЕ
 dense_18/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0dense_18_56638dense_18_56640*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_18_layer_call_and_return_conditional_losses_563212"
 dense_18/StatefulPartitionedCall
reshape_6/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_reshape_6_layer_call_and_return_conditional_losses_563512
reshape_6/PartitionedCall
%sequential_15/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0sequential_15_56644sequential_15_56646sequential_15_56648sequential_15_56650sequential_15_56652sequential_15_56654sequential_15_56656sequential_15_56658sequential_15_56660sequential_15_56662*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_560342'
%sequential_15/StatefulPartitionedCall
lambda_4/PartitionedCallPartitionedCall*z_log_var/StatefulPartitionedCall:output:0'z_mean/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8 *L
fGRE
C__inference_lambda_4_layer_call_and_return_conditional_losses_564472
lambda_4/PartitionedCallщ
add_loss_4/PartitionedCallPartitionedCall!lambda_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_add_loss_4_layer_call_and_return_conditional_losses_564842
add_loss_4/PartitionedCallї
IdentityIdentity.sequential_15/StatefulPartitionedCall:output:0!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall&^sequential_14/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

IdentityХ

Identity_1Identity#add_loss_4/PartitionedCall:output:1!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall&^sequential_14/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ї
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::::::::::::: ::::::::::::2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2N
%sequential_14/StatefulPartitionedCall%sequential_14/StatefulPartitionedCall2N
%sequential_15/StatefulPartitionedCall%sequential_15/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: 
	
к
A__inference_z_mean_layer_call_and_return_conditional_losses_56234

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К
н
D__inference_conv2d_57_layer_call_and_return_conditional_losses_58050

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Я
c
D__inference_dropout_9_layer_call_and_return_conditional_losses_55609

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЂМ?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЩ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
dtype0*
seedк2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=2
dropout/GreaterEqual/yЦ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ф
ў
H__inference_sequential_14_layer_call_and_return_conditional_losses_55628
conv2d_51_input
conv2d_51_55538
conv2d_51_55540
conv2d_52_55565
conv2d_52_55567
conv2d_53_55592
conv2d_53_55594
identityЂ!conv2d_51/StatefulPartitionedCallЂ!conv2d_52/StatefulPartitionedCallЂ!conv2d_53/StatefulPartitionedCallЂ!dropout_9/StatefulPartitionedCallЊ
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCallconv2d_51_inputconv2d_51_55538conv2d_51_55540*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_555272#
!conv2d_51/StatefulPartitionedCallХ
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0conv2d_52_55565conv2d_52_55567*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_555542#
!conv2d_52/StatefulPartitionedCallХ
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_55592conv2d_53_55594*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_555812#
!conv2d_53/StatefulPartitionedCall
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_556092#
!dropout_9/StatefulPartitionedCall
IdentityIdentity*dropout_9/StatefulPartitionedCall:output:0"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:џџџџџџџџџ::::::2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:b ^
1
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameconv2d_51_input
в

н
D__inference_conv2d_51_layer_call_and_return_conditional_losses_55527

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ї
Ч
-__inference_sequential_14_layer_call_fn_55686
conv2d_51_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallconv2d_51_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_556712
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:џџџџџџџџџ::::::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameconv2d_51_input
цХ
Џ)
!__inference__traced_restore_58588
file_prefix$
 assignvariableop_dense_17_kernel$
 assignvariableop_1_dense_17_bias$
 assignvariableop_2_z_mean_kernel"
assignvariableop_3_z_mean_bias'
#assignvariableop_4_z_log_var_kernel%
!assignvariableop_5_z_log_var_bias&
"assignvariableop_6_dense_18_kernel$
 assignvariableop_7_dense_18_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate(
$assignvariableop_13_conv2d_51_kernel&
"assignvariableop_14_conv2d_51_bias(
$assignvariableop_15_conv2d_52_kernel&
"assignvariableop_16_conv2d_52_bias(
$assignvariableop_17_conv2d_53_kernel&
"assignvariableop_18_conv2d_53_bias(
$assignvariableop_19_conv2d_54_kernel&
"assignvariableop_20_conv2d_54_bias(
$assignvariableop_21_conv2d_55_kernel&
"assignvariableop_22_conv2d_55_bias(
$assignvariableop_23_conv2d_56_kernel&
"assignvariableop_24_conv2d_56_bias(
$assignvariableop_25_conv2d_57_kernel&
"assignvariableop_26_conv2d_57_bias(
$assignvariableop_27_conv2d_58_kernel&
"assignvariableop_28_conv2d_58_bias
assignvariableop_29_total
assignvariableop_30_count.
*assignvariableop_31_adam_dense_17_kernel_m,
(assignvariableop_32_adam_dense_17_bias_m,
(assignvariableop_33_adam_z_mean_kernel_m*
&assignvariableop_34_adam_z_mean_bias_m/
+assignvariableop_35_adam_z_log_var_kernel_m-
)assignvariableop_36_adam_z_log_var_bias_m.
*assignvariableop_37_adam_dense_18_kernel_m,
(assignvariableop_38_adam_dense_18_bias_m/
+assignvariableop_39_adam_conv2d_51_kernel_m-
)assignvariableop_40_adam_conv2d_51_bias_m/
+assignvariableop_41_adam_conv2d_52_kernel_m-
)assignvariableop_42_adam_conv2d_52_bias_m/
+assignvariableop_43_adam_conv2d_53_kernel_m-
)assignvariableop_44_adam_conv2d_53_bias_m/
+assignvariableop_45_adam_conv2d_54_kernel_m-
)assignvariableop_46_adam_conv2d_54_bias_m/
+assignvariableop_47_adam_conv2d_55_kernel_m-
)assignvariableop_48_adam_conv2d_55_bias_m/
+assignvariableop_49_adam_conv2d_56_kernel_m-
)assignvariableop_50_adam_conv2d_56_bias_m/
+assignvariableop_51_adam_conv2d_57_kernel_m-
)assignvariableop_52_adam_conv2d_57_bias_m/
+assignvariableop_53_adam_conv2d_58_kernel_m-
)assignvariableop_54_adam_conv2d_58_bias_m.
*assignvariableop_55_adam_dense_17_kernel_v,
(assignvariableop_56_adam_dense_17_bias_v,
(assignvariableop_57_adam_z_mean_kernel_v*
&assignvariableop_58_adam_z_mean_bias_v/
+assignvariableop_59_adam_z_log_var_kernel_v-
)assignvariableop_60_adam_z_log_var_bias_v.
*assignvariableop_61_adam_dense_18_kernel_v,
(assignvariableop_62_adam_dense_18_bias_v/
+assignvariableop_63_adam_conv2d_51_kernel_v-
)assignvariableop_64_adam_conv2d_51_bias_v/
+assignvariableop_65_adam_conv2d_52_kernel_v-
)assignvariableop_66_adam_conv2d_52_bias_v/
+assignvariableop_67_adam_conv2d_53_kernel_v-
)assignvariableop_68_adam_conv2d_53_bias_v/
+assignvariableop_69_adam_conv2d_54_kernel_v-
)assignvariableop_70_adam_conv2d_54_bias_v/
+assignvariableop_71_adam_conv2d_55_kernel_v-
)assignvariableop_72_adam_conv2d_55_bias_v/
+assignvariableop_73_adam_conv2d_56_kernel_v-
)assignvariableop_74_adam_conv2d_56_bias_v/
+assignvariableop_75_adam_conv2d_57_kernel_v-
)assignvariableop_76_adam_conv2d_57_bias_v/
+assignvariableop_77_adam_conv2d_58_kernel_v-
)assignvariableop_78_adam_conv2d_58_bias_v
identity_80ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_67ЂAssignVariableOp_68ЂAssignVariableOp_69ЂAssignVariableOp_7ЂAssignVariableOp_70ЂAssignVariableOp_71ЂAssignVariableOp_72ЂAssignVariableOp_73ЂAssignVariableOp_74ЂAssignVariableOp_75ЂAssignVariableOp_76ЂAssignVariableOp_77ЂAssignVariableOp_78ЂAssignVariableOp_8ЂAssignVariableOp_9ў'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:P*
dtype0*'
value'B§&PB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesБ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:P*
dtype0*Е
valueЋBЈPB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesО
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ж
_output_shapesУ
Р::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*^
dtypesT
R2P	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_17_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѕ
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_17_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ѕ
AssignVariableOp_2AssignVariableOp assignvariableop_2_z_mean_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѓ
AssignVariableOp_3AssignVariableOpassignvariableop_3_z_mean_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ј
AssignVariableOp_4AssignVariableOp#assignvariableop_4_z_log_var_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5І
AssignVariableOp_5AssignVariableOp!assignvariableop_5_z_log_var_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ї
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_18_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѕ
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_18_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8Ё
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѓ
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ї
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11І
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ў
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ќ
AssignVariableOp_13AssignVariableOp$assignvariableop_13_conv2d_51_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Њ
AssignVariableOp_14AssignVariableOp"assignvariableop_14_conv2d_51_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ќ
AssignVariableOp_15AssignVariableOp$assignvariableop_15_conv2d_52_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Њ
AssignVariableOp_16AssignVariableOp"assignvariableop_16_conv2d_52_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ќ
AssignVariableOp_17AssignVariableOp$assignvariableop_17_conv2d_53_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Њ
AssignVariableOp_18AssignVariableOp"assignvariableop_18_conv2d_53_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ќ
AssignVariableOp_19AssignVariableOp$assignvariableop_19_conv2d_54_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Њ
AssignVariableOp_20AssignVariableOp"assignvariableop_20_conv2d_54_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ќ
AssignVariableOp_21AssignVariableOp$assignvariableop_21_conv2d_55_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Њ
AssignVariableOp_22AssignVariableOp"assignvariableop_22_conv2d_55_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ќ
AssignVariableOp_23AssignVariableOp$assignvariableop_23_conv2d_56_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Њ
AssignVariableOp_24AssignVariableOp"assignvariableop_24_conv2d_56_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ќ
AssignVariableOp_25AssignVariableOp$assignvariableop_25_conv2d_57_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Њ
AssignVariableOp_26AssignVariableOp"assignvariableop_26_conv2d_57_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Ќ
AssignVariableOp_27AssignVariableOp$assignvariableop_27_conv2d_58_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Њ
AssignVariableOp_28AssignVariableOp"assignvariableop_28_conv2d_58_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Ё
AssignVariableOp_29AssignVariableOpassignvariableop_29_totalIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ё
AssignVariableOp_30AssignVariableOpassignvariableop_30_countIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31В
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_17_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32А
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_17_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33А
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_z_mean_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Ў
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_z_mean_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Г
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_z_log_var_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Б
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_z_log_var_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37В
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_18_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38А
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_18_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Г
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_51_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Б
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_51_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41Г
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_52_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Б
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_52_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43Г
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_53_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44Б
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_53_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45Г
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_54_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46Б
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_54_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Г
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_55_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48Б
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_55_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49Г
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_56_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50Б
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_56_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51Г
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_57_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52Б
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_57_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53Г
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_58_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54Б
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_58_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55В
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_17_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56А
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_17_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57А
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_z_mean_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58Ў
AssignVariableOp_58AssignVariableOp&assignvariableop_58_adam_z_mean_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59Г
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_z_log_var_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60Б
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_z_log_var_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61В
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_dense_18_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62А
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_dense_18_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63Г
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_conv2d_51_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64Б
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_conv2d_51_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65Г
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_conv2d_52_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66Б
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_conv2d_52_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67Г
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_conv2d_53_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68Б
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_conv2d_53_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69Г
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_conv2d_54_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70Б
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_conv2d_54_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71Г
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv2d_55_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72Б
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_conv2d_55_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73Г
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_conv2d_56_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74Б
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_conv2d_56_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75Г
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv2d_57_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76Б
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_conv2d_57_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77Г
AssignVariableOp_77AssignVariableOp+assignvariableop_77_adam_conv2d_58_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78Б
AssignVariableOp_78AssignVariableOp)assignvariableop_78_adam_conv2d_58_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_789
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЈ
Identity_79Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_79
Identity_80IdentityIdentity_79:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_80"#
identity_80Identity_80:output:0*г
_input_shapesС
О: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
К
н
D__inference_conv2d_56_layer_call_and_return_conditional_losses_58030

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ю

н
D__inference_conv2d_52_layer_call_and_return_conditional_losses_57923

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@@
 
_user_specified_nameinputs
ч
`
D__inference_reshape_6_layer_call_and_return_conditional_losses_57622

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape/shape/3К
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_55812

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ю
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulе
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(2
resize/ResizeNearestNeighborЄ
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Д
к
H__inference_sequential_14_layer_call_and_return_conditional_losses_55648
conv2d_51_input
conv2d_51_55631
conv2d_51_55633
conv2d_52_55636
conv2d_52_55638
conv2d_53_55641
conv2d_53_55643
identityЂ!conv2d_51/StatefulPartitionedCallЂ!conv2d_52/StatefulPartitionedCallЂ!conv2d_53/StatefulPartitionedCallЊ
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCallconv2d_51_inputconv2d_51_55631conv2d_51_55633*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_555272#
!conv2d_51/StatefulPartitionedCallХ
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0conv2d_52_55636conv2d_52_55638*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_555542#
!conv2d_52/StatefulPartitionedCallХ
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_55641conv2d_53_55643*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_555812#
!conv2d_53/StatefulPartitionedCall
dropout_9/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_556142
dropout_9/PartitionedCallъ
IdentityIdentity"dropout_9/PartitionedCall:output:0"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:џџџџџџџџџ::::::2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall:b ^
1
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameconv2d_51_input
Д
r
H__inference_concatenate_7_layer_call_and_return_conditional_losses_56301

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџ:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ю

н
D__inference_conv2d_53_layer_call_and_return_conditional_losses_57943

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
.
я
H__inference_sequential_15_layer_call_and_return_conditional_losses_55963
input_18
conv2d_54_55845
conv2d_54_55847
conv2d_55_55873
conv2d_55_55875
conv2d_56_55901
conv2d_56_55903
conv2d_57_55929
conv2d_57_55931
conv2d_58_55957
conv2d_58_55959
identityЂ!conv2d_54/StatefulPartitionedCallЂ!conv2d_55/StatefulPartitionedCallЂ!conv2d_56/StatefulPartitionedCallЂ!conv2d_57/StatefulPartitionedCallЂ!conv2d_58/StatefulPartitionedCall
 up_sampling2d_30/PartitionedCallPartitionedCallinput_18*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_30_layer_call_and_return_conditional_losses_557362"
 up_sampling2d_30/PartitionedCallж
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_30/PartitionedCall:output:0conv2d_54_55845conv2d_54_55847*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_558342#
!conv2d_54/StatefulPartitionedCallЌ
 up_sampling2d_31/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_31_layer_call_and_return_conditional_losses_557552"
 up_sampling2d_31/PartitionedCallж
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_31/PartitionedCall:output:0conv2d_55_55873conv2d_55_55875*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_558622#
!conv2d_55/StatefulPartitionedCallЌ
 up_sampling2d_32/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_557742"
 up_sampling2d_32/PartitionedCallж
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_32/PartitionedCall:output:0conv2d_56_55901conv2d_56_55903*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_558902#
!conv2d_56/StatefulPartitionedCallЌ
 up_sampling2d_33/PartitionedCallPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_557932"
 up_sampling2d_33/PartitionedCallж
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_33/PartitionedCall:output:0conv2d_57_55929conv2d_57_55931*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_559182#
!conv2d_57/StatefulPartitionedCallЌ
 up_sampling2d_34/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_558122"
 up_sampling2d_34/PartitionedCallж
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_34/PartitionedCall:output:0conv2d_58_55957conv2d_58_55959*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_559462#
!conv2d_58/StatefulPartitionedCallЬ
IdentityIdentity*conv2d_58/StatefulPartitionedCall:output:0"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ@::::::::::2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall:Y U
/
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
input_18
ЉY
Ј
B__inference_model_7_layer_call_and_return_conditional_losses_56581
input_19
input_20
sequential_14_56500
sequential_14_56502
sequential_14_56504
sequential_14_56506
sequential_14_56508
sequential_14_56510
dense_17_56515
dense_17_56517
z_mean_56520
z_mean_56522
z_log_var_56525
z_log_var_56527
tf_math_multiply_8_mul_x
dense_18_56549
dense_18_56551
sequential_15_56555
sequential_15_56557
sequential_15_56559
sequential_15_56561
sequential_15_56563
sequential_15_56565
sequential_15_56567
sequential_15_56569
sequential_15_56571
sequential_15_56573
identity

identity_1Ђ dense_17/StatefulPartitionedCallЂ dense_18/StatefulPartitionedCallЂ%sequential_14/StatefulPartitionedCallЂ%sequential_15/StatefulPartitionedCallЂ!z_log_var/StatefulPartitionedCallЂz_mean/StatefulPartitionedCall
%sequential_14/StatefulPartitionedCallStatefulPartitionedCallinput_19sequential_14_56500sequential_14_56502sequential_14_56504sequential_14_56506sequential_14_56508sequential_14_56510*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_557082'
%sequential_14/StatefulPartitionedCall
flatten_6/PartitionedCallPartitionedCall.sequential_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_561742
flatten_6/PartitionedCall
concatenate_6/PartitionedCallPartitionedCall"flatten_6/PartitionedCall:output:0input_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_6_layer_call_and_return_conditional_losses_561892
concatenate_6/PartitionedCallЕ
 dense_17/StatefulPartitionedCallStatefulPartitionedCall&concatenate_6/PartitionedCall:output:0dense_17_56515dense_17_56517*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_562082"
 dense_17/StatefulPartitionedCall­
z_mean/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0z_mean_56520z_mean_56522*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_z_mean_layer_call_and_return_conditional_losses_562342 
z_mean/StatefulPartitionedCallМ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0z_log_var_56525z_log_var_56527*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_z_log_var_layer_call_and_return_conditional_losses_562602#
!z_log_var/StatefulPartitionedCall
tf.compat.v1.shape_4/ShapeShape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape_4/ShapeЊ
.tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_8/strided_slice/stackЎ
0tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_8/strided_slice/stack_1Ў
0tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_8/strided_slice/stack_2ў
(tf.__operators__.getitem_8/strided_sliceStridedSlice#tf.compat.v1.shape_4/Shape:output:07tf.__operators__.getitem_8/strided_slice/stack:output:09tf.__operators__.getitem_8/strided_slice/stack_1:output:09tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_8/strided_sliceЊ
.tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.tf.__operators__.getitem_9/strided_slice/stackЎ
0tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_9/strided_slice/stack_1Ў
0tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_9/strided_slice/stack_2ў
(tf.__operators__.getitem_9/strided_sliceStridedSlice#tf.compat.v1.shape_4/Shape:output:07tf.__operators__.getitem_9/strided_slice/stack:output:09tf.__operators__.getitem_9/strided_slice/stack_1:output:09tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_9/strided_sliceЏ
tf.math.multiply_8/MulMultf_math_multiply_8_mul_x*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.multiply_8/Mul{
tf.math.exp_4/ExpExptf.math.multiply_8/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.exp_4/Expь
&tf.random.normal_4/random_normal/shapePack1tf.__operators__.getitem_8/strided_slice:output:01tf.__operators__.getitem_9/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&tf.random.normal_4/random_normal/shape
5tf.random.normal_4/random_normal/RandomStandardNormalRandomStandardNormal/tf.random.normal_4/random_normal/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
dtype0*
seedк27
5tf.random.normal_4/random_normal/RandomStandardNormalё
$tf.random.normal_4/random_normal/mulMul>tf.random.normal_4/random_normal/RandomStandardNormal:output:0*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2&
$tf.random.normal_4/random_normal/mulа
 tf.random.normal_4/random_normalAdd(tf.random.normal_4/random_normal/mul:z:0'z_mean/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 tf.random.normal_4/random_normalІ
tf.math.multiply_9/MulMultf.math.exp_4/Exp:y:0$tf.random.normal_4/random_normal:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.math.multiply_9/MulМ
tf.__operators__.add_4/AddV2AddV2'z_mean/StatefulPartitionedCall:output:0tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
tf.__operators__.add_4/AddV2
concatenate_7/PartitionedCallPartitionedCall tf.__operators__.add_4/AddV2:z:0input_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_563012
concatenate_7/PartitionedCallЕ
 dense_18/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0dense_18_56549dense_18_56551*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_18_layer_call_and_return_conditional_losses_563212"
 dense_18/StatefulPartitionedCall
reshape_6/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_reshape_6_layer_call_and_return_conditional_losses_563512
reshape_6/PartitionedCall
%sequential_15/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0sequential_15_56555sequential_15_56557sequential_15_56559sequential_15_56561sequential_15_56563sequential_15_56565sequential_15_56567sequential_15_56569sequential_15_56571sequential_15_56573*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_560932'
%sequential_15/StatefulPartitionedCall
lambda_4/PartitionedCallPartitionedCall*z_log_var/StatefulPartitionedCall:output:0'z_mean/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8 *L
fGRE
C__inference_lambda_4_layer_call_and_return_conditional_losses_564642
lambda_4/PartitionedCallщ
add_loss_4/PartitionedCallPartitionedCall!lambda_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_add_loss_4_layer_call_and_return_conditional_losses_564842
add_loss_4/PartitionedCallї
IdentityIdentity.sequential_15/StatefulPartitionedCall:output:0!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall&^sequential_14/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

IdentityХ

Identity_1Identity#add_loss_4/PartitionedCall:output:1!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall&^sequential_14/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ї
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::::::::::::: ::::::::::::2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2N
%sequential_14/StatefulPartitionedCall%sequential_14/StatefulPartitionedCall2N
%sequential_15/StatefulPartitionedCall%sequential_15/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_19:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_20:

_output_shapes
: 
Ї
E
)__inference_reshape_6_layer_call_fn_57627

inputs
identityЭ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_reshape_6_layer_call_and_return_conditional_losses_563512
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
§
я
#__inference_signature_wrapper_56932
input_19
input_20
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

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinput_19input_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*&
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_555122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*Ї
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ::::::::::::: ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_19:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_20:

_output_shapes
: 
Ч
~
)__inference_conv2d_56_layer_call_fn_58039

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_558902
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ї
Ч
-__inference_sequential_14_layer_call_fn_55723
conv2d_51_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallconv2d_51_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_557082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:џџџџџџџџџ::::::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameconv2d_51_input
М
н
D__inference_conv2d_58_layer_call_and_return_conditional_losses_55946

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAdd{
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
SigmoidЊ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

О
-__inference_sequential_14_layer_call_fn_57477

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_556712
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:џџџџџџџџџ::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_31_layer_call_and_return_conditional_losses_55755

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ю
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulе
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(2
resize/ResizeNearestNeighborЄ
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ѓ	
м
C__inference_dense_18_layer_call_and_return_conditional_losses_56321

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

m
C__inference_lambda_4_layer_call_and_return_conditional_losses_56464

inputs
inputs_1
identityS
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
add/x]
addAddV2add/x:output:0inputs*
T0*'
_output_shapes
:џџџџџџџџџ2
addV
SquareSquareinputs_1*
T0*'
_output_shapes
:џџџџџџџџџ2
SquareX
subSubadd:z:0
Square:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
subM
ExpExpinputs_1*
T0*'
_output_shapes
:џџџџџџџџџ2
ExpY
sub_1Subsub:z:0Exp:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sub_1S
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   П2
mul/x^
mulMulmul/x:output:0	sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
Sum/reduction_indicesh
SumSummul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
SumX
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstS
MeanMeanSum:output:0Const:output:0*
T0*
_output_shapes
: 2
MeanP
IdentityIdentityMean:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџ:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
А
L
0__inference_up_sampling2d_32_layer_call_fn_55780

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_557742
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
К
н
D__inference_conv2d_55_layer_call_and_return_conditional_losses_55862

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultё
G
input_19;
serving_default_input_19:0џџџџџџџџџ
=
input_201
serving_default_input_20:0џџџџџџџџџK
sequential_15:
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:уЪ
эь
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer_with_weights-4
layer-17
layer-18
layer_with_weights-5
layer-19
layer-20
layer-21
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
є_default_save_signature
+ѕ&call_and_return_all_conditional_losses
і__call__"ич
_tf_keras_networkЛч{"class_name": "Functional", "name": "model_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_19"}, "name": "input_19", "inbound_nodes": []}, {"class_name": "Sequential", "config": {"name": "sequential_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_51_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_51", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_52", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_53", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.05, "noise_shape": null, "seed": null}}]}, "name": "sequential_14", "inbound_nodes": [[["input_19", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_6", "inbound_nodes": [[["sequential_14", 1, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_20"}, "name": "input_20", "inbound_nodes": []}, {"class_name": "Concatenate", "config": {"name": "concatenate_6", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_6", "inbound_nodes": [[["flatten_6", 0, 0, {}], ["input_20", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_17", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_17", "inbound_nodes": [[["concatenate_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "z_mean", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "z_mean", "inbound_nodes": [[["dense_17", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "z_log_var", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "z_log_var", "inbound_nodes": [[["dense_17", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.shape_4", "trainable": true, "dtype": "float32", "function": "compat.v1.shape"}, "name": "tf.compat.v1.shape_4", "inbound_nodes": [["z_mean", 0, 0, {"name": null, "out_type": "int32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_8", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_8", "inbound_nodes": [["_CONSTANT_VALUE", -1, 0.5, {"y": ["z_log_var", 0, 0], "name": null}]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_8", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_8", "inbound_nodes": [["tf.compat.v1.shape_4", 0, 0, {"slice_spec": 0}]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_9", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_9", "inbound_nodes": [["tf.compat.v1.shape_4", 0, 0, {"slice_spec": 1}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.exp_4", "trainable": true, "dtype": "float32", "function": "math.exp"}, "name": "tf.math.exp_4", "inbound_nodes": [["tf.math.multiply_8", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.random.normal_4", "trainable": true, "dtype": "float32", "function": "random.normal"}, "name": "tf.random.normal_4", "inbound_nodes": [{"class_name": "__tuple__", "items": [["tf.__operators__.getitem_8", 0, 0, {"mean": ["z_mean", 0, 0], "stddev": ["z_log_var", 0, 0]}], ["tf.__operators__.getitem_9", 0, 0, {"mean": ["z_mean", 0, 0], "stddev": ["z_log_var", 0, 0]}]]}]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_9", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_9", "inbound_nodes": [["tf.math.exp_4", 0, 0, {"y": ["tf.random.normal_4", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_4", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_4", "inbound_nodes": [["z_mean", 0, 0, {"y": ["tf.math.multiply_9", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_7", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_7", "inbound_nodes": [[["tf.__operators__.add_4", 0, 0, {}], ["input_20", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_18", "inbound_nodes": [[["concatenate_7", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_6", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [4, 4, 64]}}, "name": "reshape_6", "inbound_nodes": [[["dense_18", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_18"}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_30", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_54", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_31", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_55", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_32", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_56", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_33", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_57", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_34", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_58", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "name": "sequential_15", "inbound_nodes": [[["reshape_6", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_4", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wIAAAAAAAAAAAAAAAcAAAAGAAAAQwAAAHNEAAAAfABcAn0CfQN8AFwCfQR9BXQAagFkAWQCfAQX\nAHQAoAJ8BaEBGAB0AKADfAOhARgAFABkA2QEjQJ9BnQAoAR8BqEBUwApBU5nAAAAAAAA4L/pAQAA\nAOn/////KQHaBGF4aXMpBdoCdGbaCnJlZHVjZV9zdW3aBnNxdWFyZdoDZXhw2gtyZWR1Y2VfbWVh\nbikH2gRhcmdz2gZMYW1iZGHaBG1lYW7aC2xvZ3ZhcmlhbmNlWgxsb2dfdmFyaWFuY2XaAm112gds\nb3NzdmFsqQByDwAAAPofPGlweXRob24taW5wdXQtMzMtOGExZGIyN2U1ZjQxPtoNYW5hbHl0aWNh\nbF9rbAEAAABzCAAAAAABCAEIAioB\n", {"class_name": "__tuple__", "items": [0.1]}, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_4", "inbound_nodes": [[["z_log_var", 0, 0, {}], ["z_mean", 0, 0, {}]]]}, {"class_name": "AddLoss", "config": {"name": "add_loss_4", "trainable": true, "dtype": "float32", "unconditional": false}, "name": "add_loss_4", "inbound_nodes": [[["lambda_4", 0, 0, {}]]]}], "input_layers": [["input_19", 0, 0], ["input_20", 0, 0]], "output_layers": [["sequential_15", 1, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128, 128, 3]}, {"class_name": "TensorShape", "items": [null, 1]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_19"}, "name": "input_19", "inbound_nodes": []}, {"class_name": "Sequential", "config": {"name": "sequential_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_51_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_51", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_52", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_53", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.05, "noise_shape": null, "seed": null}}]}, "name": "sequential_14", "inbound_nodes": [[["input_19", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_6", "inbound_nodes": [[["sequential_14", 1, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_20"}, "name": "input_20", "inbound_nodes": []}, {"class_name": "Concatenate", "config": {"name": "concatenate_6", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_6", "inbound_nodes": [[["flatten_6", 0, 0, {}], ["input_20", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_17", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_17", "inbound_nodes": [[["concatenate_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "z_mean", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "z_mean", "inbound_nodes": [[["dense_17", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "z_log_var", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "z_log_var", "inbound_nodes": [[["dense_17", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.shape_4", "trainable": true, "dtype": "float32", "function": "compat.v1.shape"}, "name": "tf.compat.v1.shape_4", "inbound_nodes": [["z_mean", 0, 0, {"name": null, "out_type": "int32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_8", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_8", "inbound_nodes": [["_CONSTANT_VALUE", -1, 0.5, {"y": ["z_log_var", 0, 0], "name": null}]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_8", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_8", "inbound_nodes": [["tf.compat.v1.shape_4", 0, 0, {"slice_spec": 0}]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_9", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_9", "inbound_nodes": [["tf.compat.v1.shape_4", 0, 0, {"slice_spec": 1}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.exp_4", "trainable": true, "dtype": "float32", "function": "math.exp"}, "name": "tf.math.exp_4", "inbound_nodes": [["tf.math.multiply_8", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.random.normal_4", "trainable": true, "dtype": "float32", "function": "random.normal"}, "name": "tf.random.normal_4", "inbound_nodes": [{"class_name": "__tuple__", "items": [["tf.__operators__.getitem_8", 0, 0, {"mean": ["z_mean", 0, 0], "stddev": ["z_log_var", 0, 0]}], ["tf.__operators__.getitem_9", 0, 0, {"mean": ["z_mean", 0, 0], "stddev": ["z_log_var", 0, 0]}]]}]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_9", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_9", "inbound_nodes": [["tf.math.exp_4", 0, 0, {"y": ["tf.random.normal_4", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_4", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_4", "inbound_nodes": [["z_mean", 0, 0, {"y": ["tf.math.multiply_9", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_7", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_7", "inbound_nodes": [[["tf.__operators__.add_4", 0, 0, {}], ["input_20", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_18", "inbound_nodes": [[["concatenate_7", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_6", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [4, 4, 64]}}, "name": "reshape_6", "inbound_nodes": [[["dense_18", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_18"}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_30", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_54", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_31", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_55", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_32", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_56", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_33", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_57", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_34", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_58", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "name": "sequential_15", "inbound_nodes": [[["reshape_6", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_4", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wIAAAAAAAAAAAAAAAcAAAAGAAAAQwAAAHNEAAAAfABcAn0CfQN8AFwCfQR9BXQAagFkAWQCfAQX\nAHQAoAJ8BaEBGAB0AKADfAOhARgAFABkA2QEjQJ9BnQAoAR8BqEBUwApBU5nAAAAAAAA4L/pAQAA\nAOn/////KQHaBGF4aXMpBdoCdGbaCnJlZHVjZV9zdW3aBnNxdWFyZdoDZXhw2gtyZWR1Y2VfbWVh\nbikH2gRhcmdz2gZMYW1iZGHaBG1lYW7aC2xvZ3ZhcmlhbmNlWgxsb2dfdmFyaWFuY2XaAm112gds\nb3NzdmFsqQByDwAAAPofPGlweXRob24taW5wdXQtMzMtOGExZGIyN2U1ZjQxPtoNYW5hbHl0aWNh\nbF9rbAEAAABzCAAAAAABCAEIAioB\n", {"class_name": "__tuple__", "items": [0.1]}, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_4", "inbound_nodes": [[["z_log_var", 0, 0, {}], ["z_mean", 0, 0, {}]]]}, {"class_name": "AddLoss", "config": {"name": "add_loss_4", "trainable": true, "dtype": "float32", "unconditional": false}, "name": "add_loss_4", "inbound_nodes": [[["lambda_4", 0, 0, {}]]]}], "input_layers": [["input_19", 0, 0], ["input_20", 0, 0]], "output_layers": [["sequential_15", 1, 0]]}}, "training_config": {"loss": "reconstruction_loss", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
џ"ќ
_tf_keras_input_layerм{"class_name": "InputLayer", "name": "input_19", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_19"}}
і.
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
 layer-3
!	variables
"regularization_losses
#trainable_variables
$	keras_api
+ї&call_and_return_all_conditional_losses
ј__call__"у,
_tf_keras_sequentialФ,{"class_name": "Sequential", "name": "sequential_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_51_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_51", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_52", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_53", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.05, "noise_shape": null, "seed": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_51_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_51", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_52", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_53", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.05, "noise_shape": null, "seed": null}}]}}}
ш
%	variables
&regularization_losses
'trainable_variables
(	keras_api
+љ&call_and_return_all_conditional_losses
њ__call__"з
_tf_keras_layerН{"class_name": "Flatten", "name": "flatten_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
ы"ш
_tf_keras_input_layerШ{"class_name": "InputLayer", "name": "input_20", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_20"}}
а
)	variables
*regularization_losses
+trainable_variables
,	keras_api
+ћ&call_and_return_all_conditional_losses
ќ__call__"П
_tf_keras_layerЅ{"class_name": "Concatenate", "name": "concatenate_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_6", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 4096]}, {"class_name": "TensorShape", "items": [null, 1]}]}
ќ

-kernel
.bias
/	variables
0regularization_losses
1trainable_variables
2	keras_api
+§&call_and_return_all_conditional_losses
ў__call__"е
_tf_keras_layerЛ{"class_name": "Dense", "name": "dense_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_17", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4097}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4097]}}
ѕ

3kernel
4bias
5	variables
6regularization_losses
7trainable_variables
8	keras_api
+џ&call_and_return_all_conditional_losses
__call__"Ю
_tf_keras_layerД{"class_name": "Dense", "name": "z_mean", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "z_mean", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
ћ

9kernel
:bias
;	variables
<regularization_losses
=trainable_variables
>	keras_api
+&call_and_return_all_conditional_losses
__call__"д
_tf_keras_layerК{"class_name": "Dense", "name": "z_log_var", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "z_log_var", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
№
?	keras_api"о
_tf_keras_layerФ{"class_name": "TFOpLambda", "name": "tf.compat.v1.shape_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.compat.v1.shape_4", "trainable": true, "dtype": "float32", "function": "compat.v1.shape"}}
ъ
@	keras_api"и
_tf_keras_layerО{"class_name": "TFOpLambda", "name": "tf.math.multiply_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.multiply_8", "trainable": true, "dtype": "float32", "function": "math.multiply"}}

A	keras_api"ѕ
_tf_keras_layerл{"class_name": "SlicingOpLambda", "name": "tf.__operators__.getitem_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.__operators__.getitem_8", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}}

B	keras_api"ѕ
_tf_keras_layerл{"class_name": "SlicingOpLambda", "name": "tf.__operators__.getitem_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.__operators__.getitem_9", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}}
л
C	keras_api"Щ
_tf_keras_layerЏ{"class_name": "TFOpLambda", "name": "tf.math.exp_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.exp_4", "trainable": true, "dtype": "float32", "function": "math.exp"}}
ъ
D	keras_api"и
_tf_keras_layerО{"class_name": "TFOpLambda", "name": "tf.random.normal_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.random.normal_4", "trainable": true, "dtype": "float32", "function": "random.normal"}}
ъ
E	keras_api"и
_tf_keras_layerО{"class_name": "TFOpLambda", "name": "tf.math.multiply_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.multiply_9", "trainable": true, "dtype": "float32", "function": "math.multiply"}}
і
F	keras_api"ф
_tf_keras_layerЪ{"class_name": "TFOpLambda", "name": "tf.__operators__.add_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.__operators__.add_4", "trainable": true, "dtype": "float32", "function": "__operators__.add"}}
Э
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
+&call_and_return_all_conditional_losses
__call__"М
_tf_keras_layerЂ{"class_name": "Concatenate", "name": "concatenate_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_7", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 4]}, {"class_name": "TensorShape", "items": [null, 1]}]}
є

Kkernel
Lbias
M	variables
Nregularization_losses
Otrainable_variables
P	keras_api
+&call_and_return_all_conditional_losses
__call__"Э
_tf_keras_layerГ{"class_name": "Dense", "name": "dense_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5]}}
њ
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
+&call_and_return_all_conditional_losses
__call__"щ
_tf_keras_layerЯ{"class_name": "Reshape", "name": "reshape_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_6", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [4, 4, 64]}}}
ШQ
Ulayer-0
Vlayer_with_weights-0
Vlayer-1
Wlayer-2
Xlayer_with_weights-1
Xlayer-3
Ylayer-4
Zlayer_with_weights-2
Zlayer-5
[layer-6
\layer_with_weights-3
\layer-7
]layer-8
^layer_with_weights-4
^layer-9
_	variables
`regularization_losses
atrainable_variables
b	keras_api
+&call_and_return_all_conditional_losses
__call__"ГN
_tf_keras_sequentialN{"class_name": "Sequential", "name": "sequential_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_18"}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_30", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_54", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_31", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_55", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_32", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_56", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_33", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_57", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_34", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_58", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 64]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_18"}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_30", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_54", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_31", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_55", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_32", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_56", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_33", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_57", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_34", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_58", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
д
c	variables
dregularization_losses
etrainable_variables
f	keras_api
+&call_and_return_all_conditional_losses
__call__"У
_tf_keras_layerЉ{"class_name": "Lambda", "name": "lambda_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lambda_4", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wIAAAAAAAAAAAAAAAcAAAAGAAAAQwAAAHNEAAAAfABcAn0CfQN8AFwCfQR9BXQAagFkAWQCfAQX\nAHQAoAJ8BaEBGAB0AKADfAOhARgAFABkA2QEjQJ9BnQAoAR8BqEBUwApBU5nAAAAAAAA4L/pAQAA\nAOn/////KQHaBGF4aXMpBdoCdGbaCnJlZHVjZV9zdW3aBnNxdWFyZdoDZXhw2gtyZWR1Y2VfbWVh\nbikH2gRhcmdz2gZMYW1iZGHaBG1lYW7aC2xvZ3ZhcmlhbmNlWgxsb2dfdmFyaWFuY2XaAm112gds\nb3NzdmFsqQByDwAAAPofPGlweXRob24taW5wdXQtMzMtOGExZGIyN2U1ZjQxPtoNYW5hbHl0aWNh\nbF9rbAEAAABzCAAAAAABCAEIAioB\n", {"class_name": "__tuple__", "items": [0.1]}, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
в
g	variables
hregularization_losses
itrainable_variables
j	keras_api
+&call_and_return_all_conditional_losses
__call__"С
_tf_keras_layerЇ{"class_name": "AddLoss", "name": "add_loss_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "add_loss_4", "trainable": true, "dtype": "float32", "unconditional": false}}
Г
kiter

lbeta_1

mbeta_2
	ndecay
olearning_rate-mФ.mХ3mЦ4mЧ9mШ:mЩKmЪLmЫpmЬqmЭrmЮsmЯtmаumбvmвwmгxmдymеzmж{mз|mи}mй~mкmл-vм.vн3vо4vп9vр:vсKvтLvуpvфqvхrvцsvчtvшuvщvvъwvыxvьyvэzvю{vя|v№}vё~vђvѓ"
	optimizer
ж
p0
q1
r2
s3
t4
u5
-6
.7
38
49
910
:11
K12
L13
v14
w15
x16
y17
z18
{19
|20
}21
~22
23"
trackable_list_wrapper
 "
trackable_list_wrapper
ж
p0
q1
r2
s3
t4
u5
-6
.7
38
49
910
:11
K12
L13
v14
w15
x16
y17
z18
{19
|20
}21
~22
23"
trackable_list_wrapper
г
	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
regularization_losses
trainable_variables
і__call__
є_default_save_signature
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
ў


pkernel
qbias
	variables
regularization_losses
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"г	
_tf_keras_layerЙ	{"class_name": "Conv2D", "name": "conv2d_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_51", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 3]}}
ќ


rkernel
sbias
	variables
regularization_losses
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"б	
_tf_keras_layerЗ	{"class_name": "Conv2D", "name": "conv2d_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_52", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 4]}}
ј	

tkernel
ubias
	variables
regularization_losses
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"Э
_tf_keras_layerГ{"class_name": "Conv2D", "name": "conv2d_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_53", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 8]}}
ь
	variables
regularization_losses
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"з
_tf_keras_layerН{"class_name": "Dropout", "name": "dropout_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.05, "noise_shape": null, "seed": null}}
J
p0
q1
r2
s3
t4
u5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
p0
q1
r2
s3
t4
u5"
trackable_list_wrapper
Е
!	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
"regularization_losses
#trainable_variables
ј__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
%	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
&regularization_losses
'trainable_variables
њ__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
)	variables
layer_metrics
 non_trainable_variables
Ёlayers
Ђmetrics
 Ѓlayer_regularization_losses
*regularization_losses
+trainable_variables
ќ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
#:!
 2dense_17/kernel
:2dense_17/bias
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
Е
/	variables
Єlayer_metrics
Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
0regularization_losses
1trainable_variables
ў__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
 :	2z_mean/kernel
:2z_mean/bias
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
Е
5	variables
Љlayer_metrics
Њnon_trainable_variables
Ћlayers
Ќmetrics
 ­layer_regularization_losses
6regularization_losses
7trainable_variables
__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
#:!	2z_log_var/kernel
:2z_log_var/bias
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
Е
;	variables
Ўlayer_metrics
Џnon_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
<regularization_losses
=trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
G	variables
Гlayer_metrics
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Hregularization_losses
Itrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
": 	2dense_18/kernel
:2dense_18/bias
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
Е
M	variables
Иlayer_metrics
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Nregularization_losses
Otrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Q	variables
Нlayer_metrics
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Rregularization_losses
Strainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
б
Т	variables
Уregularization_losses
Фtrainable_variables
Х	keras_api
+&call_and_return_all_conditional_losses
__call__"М
_tf_keras_layerЂ{"class_name": "UpSampling2D", "name": "up_sampling2d_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_30", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ј	

vkernel
wbias
Ц	variables
Чregularization_losses
Шtrainable_variables
Щ	keras_api
+&call_and_return_all_conditional_losses
__call__"Э
_tf_keras_layerГ{"class_name": "Conv2D", "name": "conv2d_54", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_54", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
б
Ъ	variables
Ыregularization_losses
Ьtrainable_variables
Э	keras_api
+&call_and_return_all_conditional_losses
__call__"М
_tf_keras_layerЂ{"class_name": "UpSampling2D", "name": "up_sampling2d_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_31", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
њ	

xkernel
ybias
Ю	variables
Яregularization_losses
аtrainable_variables
б	keras_api
+&call_and_return_all_conditional_losses
__call__"Я
_tf_keras_layerЕ{"class_name": "Conv2D", "name": "conv2d_55", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_55", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 16]}}
б
в	variables
гregularization_losses
дtrainable_variables
е	keras_api
+ &call_and_return_all_conditional_losses
Ё__call__"М
_tf_keras_layerЂ{"class_name": "UpSampling2D", "name": "up_sampling2d_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_32", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
љ	

zkernel
{bias
ж	variables
зregularization_losses
иtrainable_variables
й	keras_api
+Ђ&call_and_return_all_conditional_losses
Ѓ__call__"Ю
_tf_keras_layerД{"class_name": "Conv2D", "name": "conv2d_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_56", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 16]}}
б
к	variables
лregularization_losses
мtrainable_variables
н	keras_api
+Є&call_and_return_all_conditional_losses
Ѕ__call__"М
_tf_keras_layerЂ{"class_name": "UpSampling2D", "name": "up_sampling2d_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_33", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ї	

|kernel
}bias
о	variables
пregularization_losses
рtrainable_variables
с	keras_api
+І&call_and_return_all_conditional_losses
Ї__call__"Ь
_tf_keras_layerВ{"class_name": "Conv2D", "name": "conv2d_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_57", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 8]}}
б
т	variables
уregularization_losses
фtrainable_variables
х	keras_api
+Ј&call_and_return_all_conditional_losses
Љ__call__"М
_tf_keras_layerЂ{"class_name": "UpSampling2D", "name": "up_sampling2d_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_34", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ќ	

~kernel
bias
ц	variables
чregularization_losses
шtrainable_variables
щ	keras_api
+Њ&call_and_return_all_conditional_losses
Ћ__call__"б
_tf_keras_layerЗ{"class_name": "Conv2D", "name": "conv2d_58", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_58", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 4]}}
f
v0
w1
x2
y3
z4
{5
|6
}7
~8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
v0
w1
x2
y3
z4
{5
|6
}7
~8
9"
trackable_list_wrapper
Е
_	variables
ъlayer_metrics
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
`regularization_losses
atrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
c	variables
яlayer_metrics
№non_trainable_variables
ёlayers
ђmetrics
 ѓlayer_regularization_losses
dregularization_losses
etrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
g	variables
єlayer_metrics
ѕnon_trainable_variables
іlayers
їmetrics
 јlayer_regularization_losses
hregularization_losses
itrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
*:(2conv2d_51/kernel
:2conv2d_51/bias
*:(2conv2d_52/kernel
:2conv2d_52/bias
*:(2conv2d_53/kernel
:2conv2d_53/bias
*:(@2conv2d_54/kernel
:2conv2d_54/bias
*:(2conv2d_55/kernel
:2conv2d_55/bias
*:(2conv2d_56/kernel
:2conv2d_56/bias
*:(2conv2d_57/kernel
:2conv2d_57/bias
*:(2conv2d_58/kernel
:2conv2d_58/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
Ц
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
14
15
16
17
18
19
20
21"
trackable_list_wrapper
(
љ0"
trackable_list_wrapper
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
И
	variables
њlayer_metrics
ћnon_trainable_variables
ќlayers
§metrics
 ўlayer_regularization_losses
regularization_losses
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
И
	variables
џlayer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
regularization_losses
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
И
	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
regularization_losses
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
regularization_losses
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
0
1
2
 3"
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Т	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
Уregularization_losses
Фtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
И
Ц	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
Чregularization_losses
Шtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ъ	variables
layer_metrics
non_trainable_variables
layers
metrics
 layer_regularization_losses
Ыregularization_losses
Ьtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
И
Ю	variables
layer_metrics
non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Яregularization_losses
аtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
в	variables
Ђlayer_metrics
Ѓnon_trainable_variables
Єlayers
Ѕmetrics
 Іlayer_regularization_losses
гregularization_losses
дtrainable_variables
Ё__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
И
ж	variables
Їlayer_metrics
Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
зregularization_losses
иtrainable_variables
Ѓ__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
к	variables
Ќlayer_metrics
­non_trainable_variables
Ўlayers
Џmetrics
 Аlayer_regularization_losses
лregularization_losses
мtrainable_variables
Ѕ__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
И
о	variables
Бlayer_metrics
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
пregularization_losses
рtrainable_variables
Ї__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
т	variables
Жlayer_metrics
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
уregularization_losses
фtrainable_variables
Љ__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
И
ц	variables
Лlayer_metrics
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
чregularization_losses
шtrainable_variables
Ћ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
f
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9"
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
П

Рtotal

Сcount
Т	variables
У	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
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
:  (2total
:  (2count
0
Р0
С1"
trackable_list_wrapper
.
Т	variables"
_generic_user_object
(:&
 2Adam/dense_17/kernel/m
!:2Adam/dense_17/bias/m
%:#	2Adam/z_mean/kernel/m
:2Adam/z_mean/bias/m
(:&	2Adam/z_log_var/kernel/m
!:2Adam/z_log_var/bias/m
':%	2Adam/dense_18/kernel/m
!:2Adam/dense_18/bias/m
/:-2Adam/conv2d_51/kernel/m
!:2Adam/conv2d_51/bias/m
/:-2Adam/conv2d_52/kernel/m
!:2Adam/conv2d_52/bias/m
/:-2Adam/conv2d_53/kernel/m
!:2Adam/conv2d_53/bias/m
/:-@2Adam/conv2d_54/kernel/m
!:2Adam/conv2d_54/bias/m
/:-2Adam/conv2d_55/kernel/m
!:2Adam/conv2d_55/bias/m
/:-2Adam/conv2d_56/kernel/m
!:2Adam/conv2d_56/bias/m
/:-2Adam/conv2d_57/kernel/m
!:2Adam/conv2d_57/bias/m
/:-2Adam/conv2d_58/kernel/m
!:2Adam/conv2d_58/bias/m
(:&
 2Adam/dense_17/kernel/v
!:2Adam/dense_17/bias/v
%:#	2Adam/z_mean/kernel/v
:2Adam/z_mean/bias/v
(:&	2Adam/z_log_var/kernel/v
!:2Adam/z_log_var/bias/v
':%	2Adam/dense_18/kernel/v
!:2Adam/dense_18/bias/v
/:-2Adam/conv2d_51/kernel/v
!:2Adam/conv2d_51/bias/v
/:-2Adam/conv2d_52/kernel/v
!:2Adam/conv2d_52/bias/v
/:-2Adam/conv2d_53/kernel/v
!:2Adam/conv2d_53/bias/v
/:-@2Adam/conv2d_54/kernel/v
!:2Adam/conv2d_54/bias/v
/:-2Adam/conv2d_55/kernel/v
!:2Adam/conv2d_55/bias/v
/:-2Adam/conv2d_56/kernel/v
!:2Adam/conv2d_56/bias/v
/:-2Adam/conv2d_57/kernel/v
!:2Adam/conv2d_57/bias/v
/:-2Adam/conv2d_58/kernel/v
!:2Adam/conv2d_58/bias/v
2
 __inference__wrapped_model_55512ъ
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *ZЂW
UR
,)
input_19џџџџџџџџџ
"
input_20џџџџџџџџџ
ж2г
B__inference_model_7_layer_call_and_return_conditional_losses_57287
B__inference_model_7_layer_call_and_return_conditional_losses_57113
B__inference_model_7_layer_call_and_return_conditional_losses_56581
B__inference_model_7_layer_call_and_return_conditional_losses_56496Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
ъ2ч
'__inference_model_7_layer_call_fn_56866
'__inference_model_7_layer_call_fn_56724
'__inference_model_7_layer_call_fn_57401
'__inference_model_7_layer_call_fn_57344Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
H__inference_sequential_14_layer_call_and_return_conditional_losses_57434
H__inference_sequential_14_layer_call_and_return_conditional_losses_55648
H__inference_sequential_14_layer_call_and_return_conditional_losses_57460
H__inference_sequential_14_layer_call_and_return_conditional_losses_55628Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
2џ
-__inference_sequential_14_layer_call_fn_57477
-__inference_sequential_14_layer_call_fn_57494
-__inference_sequential_14_layer_call_fn_55723
-__inference_sequential_14_layer_call_fn_55686Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
D__inference_flatten_6_layer_call_and_return_conditional_losses_57500Ђ
В
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
annotationsЊ *
 
г2а
)__inference_flatten_6_layer_call_fn_57505Ђ
В
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
annotationsЊ *
 
ђ2я
H__inference_concatenate_6_layer_call_and_return_conditional_losses_57512Ђ
В
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
annotationsЊ *
 
з2д
-__inference_concatenate_6_layer_call_fn_57518Ђ
В
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
annotationsЊ *
 
э2ъ
C__inference_dense_17_layer_call_and_return_conditional_losses_57528Ђ
В
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
annotationsЊ *
 
в2Я
(__inference_dense_17_layer_call_fn_57537Ђ
В
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
annotationsЊ *
 
ы2ш
A__inference_z_mean_layer_call_and_return_conditional_losses_57547Ђ
В
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
annotationsЊ *
 
а2Э
&__inference_z_mean_layer_call_fn_57556Ђ
В
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
annotationsЊ *
 
ю2ы
D__inference_z_log_var_layer_call_and_return_conditional_losses_57566Ђ
В
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
annotationsЊ *
 
г2а
)__inference_z_log_var_layer_call_fn_57575Ђ
В
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
annotationsЊ *
 
ђ2я
H__inference_concatenate_7_layer_call_and_return_conditional_losses_57582Ђ
В
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
annotationsЊ *
 
з2д
-__inference_concatenate_7_layer_call_fn_57588Ђ
В
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
annotationsЊ *
 
э2ъ
C__inference_dense_18_layer_call_and_return_conditional_losses_57599Ђ
В
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
annotationsЊ *
 
в2Я
(__inference_dense_18_layer_call_fn_57608Ђ
В
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
annotationsЊ *
 
ю2ы
D__inference_reshape_6_layer_call_and_return_conditional_losses_57622Ђ
В
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
annotationsЊ *
 
г2а
)__inference_reshape_6_layer_call_fn_57627Ђ
В
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
annotationsЊ *
 
ю2ы
H__inference_sequential_15_layer_call_and_return_conditional_losses_57706
H__inference_sequential_15_layer_call_and_return_conditional_losses_55963
H__inference_sequential_15_layer_call_and_return_conditional_losses_57785
H__inference_sequential_15_layer_call_and_return_conditional_losses_55997Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
2џ
-__inference_sequential_15_layer_call_fn_57835
-__inference_sequential_15_layer_call_fn_56116
-__inference_sequential_15_layer_call_fn_57810
-__inference_sequential_15_layer_call_fn_56057Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
C__inference_lambda_4_layer_call_and_return_conditional_losses_57852
C__inference_lambda_4_layer_call_and_return_conditional_losses_57869Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
(__inference_lambda_4_layer_call_fn_57875
(__inference_lambda_4_layer_call_fn_57881Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
я2ь
E__inference_add_loss_4_layer_call_and_return_conditional_losses_57886Ђ
В
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
annotationsЊ *
 
д2б
*__inference_add_loss_4_layer_call_fn_57892Ђ
В
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
annotationsЊ *
 
гBа
#__inference_signature_wrapper_56932input_19input_20"
В
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
annotationsЊ *
 
ю2ы
D__inference_conv2d_51_layer_call_and_return_conditional_losses_57903Ђ
В
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
annotationsЊ *
 
г2а
)__inference_conv2d_51_layer_call_fn_57912Ђ
В
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
annotationsЊ *
 
ю2ы
D__inference_conv2d_52_layer_call_and_return_conditional_losses_57923Ђ
В
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
annotationsЊ *
 
г2а
)__inference_conv2d_52_layer_call_fn_57932Ђ
В
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
annotationsЊ *
 
ю2ы
D__inference_conv2d_53_layer_call_and_return_conditional_losses_57943Ђ
В
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
annotationsЊ *
 
г2а
)__inference_conv2d_53_layer_call_fn_57952Ђ
В
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
annotationsЊ *
 
Ц2У
D__inference_dropout_9_layer_call_and_return_conditional_losses_57964
D__inference_dropout_9_layer_call_and_return_conditional_losses_57969Д
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
2
)__inference_dropout_9_layer_call_fn_57979
)__inference_dropout_9_layer_call_fn_57974Д
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
Г2А
K__inference_up_sampling2d_30_layer_call_and_return_conditional_losses_55736р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
0__inference_up_sampling2d_30_layer_call_fn_55742р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
ю2ы
D__inference_conv2d_54_layer_call_and_return_conditional_losses_57990Ђ
В
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
annotationsЊ *
 
г2а
)__inference_conv2d_54_layer_call_fn_57999Ђ
В
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
annotationsЊ *
 
Г2А
K__inference_up_sampling2d_31_layer_call_and_return_conditional_losses_55755р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
0__inference_up_sampling2d_31_layer_call_fn_55761р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
ю2ы
D__inference_conv2d_55_layer_call_and_return_conditional_losses_58010Ђ
В
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
annotationsЊ *
 
г2а
)__inference_conv2d_55_layer_call_fn_58019Ђ
В
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
annotationsЊ *
 
Г2А
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_55774р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
0__inference_up_sampling2d_32_layer_call_fn_55780р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
ю2ы
D__inference_conv2d_56_layer_call_and_return_conditional_losses_58030Ђ
В
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
annotationsЊ *
 
г2а
)__inference_conv2d_56_layer_call_fn_58039Ђ
В
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
annotationsЊ *
 
Г2А
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_55793р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
0__inference_up_sampling2d_33_layer_call_fn_55799р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
ю2ы
D__inference_conv2d_57_layer_call_and_return_conditional_losses_58050Ђ
В
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
annotationsЊ *
 
г2а
)__inference_conv2d_57_layer_call_fn_58059Ђ
В
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
annotationsЊ *
 
Г2А
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_55812р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
0__inference_up_sampling2d_34_layer_call_fn_55818р
В
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
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
ю2ы
D__inference_conv2d_58_layer_call_and_return_conditional_losses_58070Ђ
В
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
annotationsЊ *
 
г2а
)__inference_conv2d_58_layer_call_fn_58079Ђ
В
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
annotationsЊ *
 
	J
Const№
 __inference__wrapped_model_55512Ыpqrstu-.349:ЌKLvwxyz{|}~dЂa
ZЂW
UR
,)
input_19џџџџџџџџџ
"
input_20џџџџџџџџџ
Њ "GЊD
B
sequential_151.
sequential_15џџџџџџџџџ
E__inference_add_loss_4_layer_call_and_return_conditional_losses_57886DЂ
Ђ

inputs 
Њ ""Ђ


0 

	
1/0 W
*__inference_add_loss_4_layer_call_fn_57892)Ђ
Ђ

inputs 
Њ " в
H__inference_concatenate_6_layer_call_and_return_conditional_losses_57512[ЂX
QЂN
LI
# 
inputs/0џџџџџџџџџ 
"
inputs/1џџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ 
 Љ
-__inference_concatenate_6_layer_call_fn_57518x[ЂX
QЂN
LI
# 
inputs/0џџџџџџџџџ 
"
inputs/1џџџџџџџџџ
Њ "џџџџџџџџџ а
H__inference_concatenate_7_layer_call_and_return_conditional_losses_57582ZЂW
PЂM
KH
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 Ї
-__inference_concatenate_7_layer_call_fn_57588vZЂW
PЂM
KH
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
Њ "џџџџџџџџџЖ
D__inference_conv2d_51_layer_call_and_return_conditional_losses_57903npq9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ@@
 
)__inference_conv2d_51_layer_call_fn_57912apq9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ " џџџџџџџџџ@@Д
D__inference_conv2d_52_layer_call_and_return_conditional_losses_57923lrs7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@@
Њ "-Ђ*
# 
0џџџџџџџџџ  
 
)__inference_conv2d_52_layer_call_fn_57932_rs7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@@
Њ " џџџџџџџџџ  Д
D__inference_conv2d_53_layer_call_and_return_conditional_losses_57943ltu7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ  
Њ "-Ђ*
# 
0џџџџџџџџџ
 
)__inference_conv2d_53_layer_call_fn_57952_tu7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ  
Њ " џџџџџџџџџй
D__inference_conv2d_54_layer_call_and_return_conditional_losses_57990vwIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Б
)__inference_conv2d_54_layer_call_fn_57999vwIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџй
D__inference_conv2d_55_layer_call_and_return_conditional_losses_58010xyIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Б
)__inference_conv2d_55_layer_call_fn_58019xyIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџй
D__inference_conv2d_56_layer_call_and_return_conditional_losses_58030z{IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Б
)__inference_conv2d_56_layer_call_fn_58039z{IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџй
D__inference_conv2d_57_layer_call_and_return_conditional_losses_58050|}IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Б
)__inference_conv2d_57_layer_call_fn_58059|}IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџй
D__inference_conv2d_58_layer_call_and_return_conditional_losses_58070~IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Б
)__inference_conv2d_58_layer_call_fn_58079~IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЅ
C__inference_dense_17_layer_call_and_return_conditional_losses_57528^-.0Ђ-
&Ђ#
!
inputsџџџџџџџџџ 
Њ "&Ђ#

0џџџџџџџџџ
 }
(__inference_dense_17_layer_call_fn_57537Q-.0Ђ-
&Ђ#
!
inputsџџџџџџџџџ 
Њ "џџџџџџџџџЄ
C__inference_dense_18_layer_call_and_return_conditional_losses_57599]KL/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ
 |
(__inference_dense_18_layer_call_fn_57608PKL/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџД
D__inference_dropout_9_layer_call_and_return_conditional_losses_57964l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p
Њ "-Ђ*
# 
0џџџџџџџџџ
 Д
D__inference_dropout_9_layer_call_and_return_conditional_losses_57969l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p 
Њ "-Ђ*
# 
0џџџџџџџџџ
 
)__inference_dropout_9_layer_call_fn_57974_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p
Њ " џџџџџџџџџ
)__inference_dropout_9_layer_call_fn_57979_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p 
Њ " џџџџџџџџџЉ
D__inference_flatten_6_layer_call_and_return_conditional_losses_57500a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ 
 
)__inference_flatten_6_layer_call_fn_57505T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "џџџџџџџџџ С
C__inference_lambda_4_layer_call_and_return_conditional_losses_57852zbЂ_
XЂU
KH
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ

 
p
Њ "Ђ


0 
 С
C__inference_lambda_4_layer_call_and_return_conditional_losses_57869zbЂ_
XЂU
KH
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ

 
p 
Њ "Ђ


0 
 
(__inference_lambda_4_layer_call_fn_57875mbЂ_
XЂU
KH
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ

 
p
Њ " 
(__inference_lambda_4_layer_call_fn_57881mbЂ_
XЂU
KH
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ

 
p 
Њ "  
B__inference_model_7_layer_call_and_return_conditional_losses_56496йpqrstu-.349:ЌKLvwxyz{|}~lЂi
bЂ_
UR
,)
input_19џџџџџџџџџ
"
input_20џџџџџџџџџ
p

 
Њ "MЂJ
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

	
1/0  
B__inference_model_7_layer_call_and_return_conditional_losses_56581йpqrstu-.349:ЌKLvwxyz{|}~lЂi
bЂ_
UR
,)
input_19џџџџџџџџџ
"
input_20џџџџџџџџџ
p 

 
Њ "MЂJ
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

	
1/0 
B__inference_model_7_layer_call_and_return_conditional_losses_57113Щpqrstu-.349:ЌKLvwxyz{|}~lЂi
bЂ_
UR
,)
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
p

 
Њ "=Ђ:
%"
0џџџџџџџџџ

	
1/0 
B__inference_model_7_layer_call_and_return_conditional_losses_57287Щpqrstu-.349:ЌKLvwxyz{|}~lЂi
bЂ_
UR
,)
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
p 

 
Њ "=Ђ:
%"
0џџџџџџџџџ

	
1/0 ъ
'__inference_model_7_layer_call_fn_56724Оpqrstu-.349:ЌKLvwxyz{|}~lЂi
bЂ_
UR
,)
input_19џџџџџџџџџ
"
input_20џџџџџџџџџ
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџъ
'__inference_model_7_layer_call_fn_56866Оpqrstu-.349:ЌKLvwxyz{|}~lЂi
bЂ_
UR
,)
input_19џџџџџџџџџ
"
input_20џџџџџџџџџ
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџъ
'__inference_model_7_layer_call_fn_57344Оpqrstu-.349:ЌKLvwxyz{|}~lЂi
bЂ_
UR
,)
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџъ
'__inference_model_7_layer_call_fn_57401Оpqrstu-.349:ЌKLvwxyz{|}~lЂi
bЂ_
UR
,)
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЉ
D__inference_reshape_6_layer_call_and_return_conditional_losses_57622a0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
)__inference_reshape_6_layer_call_fn_57627T0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ " џџџџџџџџџ@а
H__inference_sequential_14_layer_call_and_return_conditional_losses_55628pqrstuJЂG
@Ђ=
30
conv2d_51_inputџџџџџџџџџ
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 а
H__inference_sequential_14_layer_call_and_return_conditional_losses_55648pqrstuJЂG
@Ђ=
30
conv2d_51_inputџџџџџџџџџ
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 Ц
H__inference_sequential_14_layer_call_and_return_conditional_losses_57434zpqrstuAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 Ц
H__inference_sequential_14_layer_call_and_return_conditional_losses_57460zpqrstuAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 Ї
-__inference_sequential_14_layer_call_fn_55686vpqrstuJЂG
@Ђ=
30
conv2d_51_inputџџџџџџџџџ
p

 
Њ " џџџџџџџџџЇ
-__inference_sequential_14_layer_call_fn_55723vpqrstuJЂG
@Ђ=
30
conv2d_51_inputџџџџџџџџџ
p 

 
Њ " џџџџџџџџџ
-__inference_sequential_14_layer_call_fn_57477mpqrstuAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ " џџџџџџџџџ
-__inference_sequential_14_layer_call_fn_57494mpqrstuAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ " џџџџџџџџџн
H__inference_sequential_15_layer_call_and_return_conditional_losses_55963
vwxyz{|}~AЂ>
7Ђ4
*'
input_18џџџџџџџџџ@
p

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 н
H__inference_sequential_15_layer_call_and_return_conditional_losses_55997
vwxyz{|}~AЂ>
7Ђ4
*'
input_18џџџџџџџџџ@
p 

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ъ
H__inference_sequential_15_layer_call_and_return_conditional_losses_57706~
vwxyz{|}~?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ@
p

 
Њ "/Ђ,
%"
0џџџџџџџџџ
 Ъ
H__inference_sequential_15_layer_call_and_return_conditional_losses_57785~
vwxyz{|}~?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ@
p 

 
Њ "/Ђ,
%"
0џџџџџџџџџ
 Е
-__inference_sequential_15_layer_call_fn_56057
vwxyz{|}~AЂ>
7Ђ4
*'
input_18џџџџџџџџџ@
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЕ
-__inference_sequential_15_layer_call_fn_56116
vwxyz{|}~AЂ>
7Ђ4
*'
input_18џџџџџџџџџ@
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџГ
-__inference_sequential_15_layer_call_fn_57810
vwxyz{|}~?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ@
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџГ
-__inference_sequential_15_layer_call_fn_57835
vwxyz{|}~?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ@
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
#__inference_signature_wrapper_56932оpqrstu-.349:ЌKLvwxyz{|}~wЂt
Ђ 
mЊj
8
input_19,)
input_19џџџџџџџџџ
.
input_20"
input_20џџџџџџџџџ"GЊD
B
sequential_151.
sequential_15џџџџџџџџџю
K__inference_up_sampling2d_30_layer_call_and_return_conditional_losses_55736RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_up_sampling2d_30_layer_call_fn_55742RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџю
K__inference_up_sampling2d_31_layer_call_and_return_conditional_losses_55755RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_up_sampling2d_31_layer_call_fn_55761RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџю
K__inference_up_sampling2d_32_layer_call_and_return_conditional_losses_55774RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_up_sampling2d_32_layer_call_fn_55780RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџю
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_55793RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_up_sampling2d_33_layer_call_fn_55799RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџю
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_55812RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_up_sampling2d_34_layer_call_fn_55818RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЅ
D__inference_z_log_var_layer_call_and_return_conditional_losses_57566]9:0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 }
)__inference_z_log_var_layer_call_fn_57575P9:0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЂ
A__inference_z_mean_layer_call_and_return_conditional_losses_57547]340Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 z
&__inference_z_mean_layer_call_fn_57556P340Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџ