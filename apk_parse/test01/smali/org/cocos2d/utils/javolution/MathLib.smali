.class public final Lorg/cocos2d/utils/javolution/MathLib;
.super Ljava/lang/Object;
.source "MathLib.java"


# static fields
.field private static final BIT_LENGTH:[B

.field public static final E:D = 2.718281828459045

.field public static final FOUR_PI:D = 12.566370614359172

.field public static final HALF_PI:D = 1.5707963267948966

.field private static INV_LOG10:D = 0.0

.field public static final Infinity:D = Infinity

.field public static final LOG10:D = 2.302585092994046

.field public static final LOG2:D = 0.6931471805599453

.field private static final LOG2_DIV_LOG10:D = 0.3010299956639812

.field static final Lg1:D = 0.6666666666666735

.field static final Lg2:D = 0.3999999999940942

.field static final Lg3:D = 0.2857142874366239

.field static final Lg4:D = 0.22222198432149784

.field static final Lg5:D = 0.1818357216161805

.field static final Lg6:D = 0.15313837699209373

.field static final Lg7:D = 0.14798198605116586

.field private static final MASK_32:J = 0xffffffffL

.field private static final MASK_63:J = 0x7fffffffffffffffL

.field private static final NORMALIZATION_FACTOR:D = 4.6566128730773926E-10

.field public static final NaN:D = NaN

.field static final P1:D = 0.16666666666666602

.field static final P2:D = -0.0027777777777015593

.field static final P3:D = 6.613756321437934E-5

.field static final P4:D = -1.6533902205465252E-6

.field static final P5:D = 4.1381367970572385E-8

.field public static final PI:D = 3.141592653589793

.field public static final PI_SQUARE:D = 9.869604401089358

.field private static final POW5_INT:[I

.field private static final RANDOM:Ljava/util/Random;

.field public static final SQRT2:D = 1.4142135623730951

.field public static final TWO_PI:D = 6.283185307179586

.field static final aT:[D

.field static final atanhi:[D

.field static final atanlo:[D

.field static final halF:[D

.field static final huge:D = 1.0E300

.field static final invln2:D = 1.4426950408889634

.field static final ln2HI:[D

.field static final ln2LO:[D

.field static final ln2_hi:D = 0.6931471803691238

.field static final ln2_lo:D = 1.9082149292705877E-10

.field static final o_threshold:D = 709.782712893384

.field static final one:D = 1.0

.field static final two54:D = 1.8014398509481984E16

.field static final twom1000:D = 9.332636185032189E-302

.field static final u_threshold:D = -745.1332191019411

.field static final zero:D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x5

    const/4 v5, 0x6

    const/4 v4, 0x7

    const/16 v3, 0x8

    .line 53
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/cocos2d/utils/javolution/MathLib;->RANDOM:Ljava/util/Random;

    .line 123
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v1, v0, v7

    const/4 v1, 0x3

    aput-byte v1, v0, v6

    const/4 v1, 0x3

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    aput-byte v1, v0, v4

    aput-byte v7, v0, v3

    const/16 v1, 0x9

    aput-byte v7, v0, v1

    const/16 v1, 0xa

    aput-byte v7, v0, v1

    const/16 v1, 0xb

    .line 124
    aput-byte v7, v0, v1

    const/16 v1, 0xc

    aput-byte v7, v0, v1

    const/16 v1, 0xd

    aput-byte v7, v0, v1

    const/16 v1, 0xe

    aput-byte v7, v0, v1

    const/16 v1, 0xf

    aput-byte v7, v0, v1

    const/16 v1, 0x10

    aput-byte v6, v0, v1

    const/16 v1, 0x11

    aput-byte v6, v0, v1

    const/16 v1, 0x12

    aput-byte v6, v0, v1

    const/16 v1, 0x13

    aput-byte v6, v0, v1

    const/16 v1, 0x14

    aput-byte v6, v0, v1

    const/16 v1, 0x15

    aput-byte v6, v0, v1

    const/16 v1, 0x16

    aput-byte v6, v0, v1

    const/16 v1, 0x17

    aput-byte v6, v0, v1

    const/16 v1, 0x18

    aput-byte v6, v0, v1

    const/16 v1, 0x19

    aput-byte v6, v0, v1

    const/16 v1, 0x1a

    aput-byte v6, v0, v1

    const/16 v1, 0x1b

    aput-byte v6, v0, v1

    const/16 v1, 0x1c

    aput-byte v6, v0, v1

    const/16 v1, 0x1d

    aput-byte v6, v0, v1

    const/16 v1, 0x1e

    aput-byte v6, v0, v1

    const/16 v1, 0x1f

    aput-byte v6, v0, v1

    const/16 v1, 0x20

    aput-byte v5, v0, v1

    const/16 v1, 0x21

    .line 125
    aput-byte v5, v0, v1

    const/16 v1, 0x22

    aput-byte v5, v0, v1

    const/16 v1, 0x23

    aput-byte v5, v0, v1

    const/16 v1, 0x24

    aput-byte v5, v0, v1

    const/16 v1, 0x25

    aput-byte v5, v0, v1

    const/16 v1, 0x26

    aput-byte v5, v0, v1

    const/16 v1, 0x27

    aput-byte v5, v0, v1

    const/16 v1, 0x28

    aput-byte v5, v0, v1

    const/16 v1, 0x29

    aput-byte v5, v0, v1

    const/16 v1, 0x2a

    aput-byte v5, v0, v1

    const/16 v1, 0x2b

    aput-byte v5, v0, v1

    const/16 v1, 0x2c

    aput-byte v5, v0, v1

    const/16 v1, 0x2d

    aput-byte v5, v0, v1

    const/16 v1, 0x2e

    aput-byte v5, v0, v1

    const/16 v1, 0x2f

    aput-byte v5, v0, v1

    const/16 v1, 0x30

    aput-byte v5, v0, v1

    const/16 v1, 0x31

    aput-byte v5, v0, v1

    const/16 v1, 0x32

    aput-byte v5, v0, v1

    const/16 v1, 0x33

    aput-byte v5, v0, v1

    const/16 v1, 0x34

    aput-byte v5, v0, v1

    const/16 v1, 0x35

    aput-byte v5, v0, v1

    const/16 v1, 0x36

    aput-byte v5, v0, v1

    const/16 v1, 0x37

    .line 126
    aput-byte v5, v0, v1

    const/16 v1, 0x38

    aput-byte v5, v0, v1

    const/16 v1, 0x39

    aput-byte v5, v0, v1

    const/16 v1, 0x3a

    aput-byte v5, v0, v1

    const/16 v1, 0x3b

    aput-byte v5, v0, v1

    const/16 v1, 0x3c

    aput-byte v5, v0, v1

    const/16 v1, 0x3d

    aput-byte v5, v0, v1

    const/16 v1, 0x3e

    aput-byte v5, v0, v1

    const/16 v1, 0x3f

    aput-byte v5, v0, v1

    const/16 v1, 0x40

    aput-byte v4, v0, v1

    const/16 v1, 0x41

    aput-byte v4, v0, v1

    const/16 v1, 0x42

    aput-byte v4, v0, v1

    const/16 v1, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0x44

    aput-byte v4, v0, v1

    const/16 v1, 0x45

    aput-byte v4, v0, v1

    const/16 v1, 0x46

    aput-byte v4, v0, v1

    const/16 v1, 0x47

    aput-byte v4, v0, v1

    const/16 v1, 0x48

    aput-byte v4, v0, v1

    const/16 v1, 0x49

    aput-byte v4, v0, v1

    const/16 v1, 0x4a

    aput-byte v4, v0, v1

    const/16 v1, 0x4b

    aput-byte v4, v0, v1

    const/16 v1, 0x4c

    aput-byte v4, v0, v1

    const/16 v1, 0x4d

    .line 127
    aput-byte v4, v0, v1

    const/16 v1, 0x4e

    aput-byte v4, v0, v1

    const/16 v1, 0x4f

    aput-byte v4, v0, v1

    const/16 v1, 0x50

    aput-byte v4, v0, v1

    const/16 v1, 0x51

    aput-byte v4, v0, v1

    const/16 v1, 0x52

    aput-byte v4, v0, v1

    const/16 v1, 0x53

    aput-byte v4, v0, v1

    const/16 v1, 0x54

    aput-byte v4, v0, v1

    const/16 v1, 0x55

    aput-byte v4, v0, v1

    const/16 v1, 0x56

    aput-byte v4, v0, v1

    const/16 v1, 0x57

    aput-byte v4, v0, v1

    const/16 v1, 0x58

    aput-byte v4, v0, v1

    const/16 v1, 0x59

    aput-byte v4, v0, v1

    const/16 v1, 0x5a

    aput-byte v4, v0, v1

    const/16 v1, 0x5b

    aput-byte v4, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    aput-byte v4, v0, v1

    const/16 v1, 0x60

    aput-byte v4, v0, v1

    const/16 v1, 0x61

    aput-byte v4, v0, v1

    const/16 v1, 0x62

    aput-byte v4, v0, v1

    const/16 v1, 0x63

    .line 128
    aput-byte v4, v0, v1

    const/16 v1, 0x64

    aput-byte v4, v0, v1

    const/16 v1, 0x65

    aput-byte v4, v0, v1

    const/16 v1, 0x66

    aput-byte v4, v0, v1

    const/16 v1, 0x67

    aput-byte v4, v0, v1

    const/16 v1, 0x68

    aput-byte v4, v0, v1

    const/16 v1, 0x69

    aput-byte v4, v0, v1

    const/16 v1, 0x6a

    aput-byte v4, v0, v1

    const/16 v1, 0x6b

    aput-byte v4, v0, v1

    const/16 v1, 0x6c

    aput-byte v4, v0, v1

    const/16 v1, 0x6d

    aput-byte v4, v0, v1

    const/16 v1, 0x6e

    aput-byte v4, v0, v1

    const/16 v1, 0x6f

    aput-byte v4, v0, v1

    const/16 v1, 0x70

    aput-byte v4, v0, v1

    const/16 v1, 0x71

    aput-byte v4, v0, v1

    const/16 v1, 0x72

    aput-byte v4, v0, v1

    const/16 v1, 0x73

    aput-byte v4, v0, v1

    const/16 v1, 0x74

    aput-byte v4, v0, v1

    const/16 v1, 0x75

    aput-byte v4, v0, v1

    const/16 v1, 0x76

    aput-byte v4, v0, v1

    const/16 v1, 0x77

    aput-byte v4, v0, v1

    const/16 v1, 0x78

    aput-byte v4, v0, v1

    const/16 v1, 0x79

    .line 129
    aput-byte v4, v0, v1

    const/16 v1, 0x7a

    aput-byte v4, v0, v1

    const/16 v1, 0x7b

    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    const/16 v1, 0x80

    aput-byte v3, v0, v1

    const/16 v1, 0x81

    aput-byte v3, v0, v1

    const/16 v1, 0x82

    aput-byte v3, v0, v1

    const/16 v1, 0x83

    aput-byte v3, v0, v1

    const/16 v1, 0x84

    aput-byte v3, v0, v1

    const/16 v1, 0x85

    aput-byte v3, v0, v1

    const/16 v1, 0x86

    aput-byte v3, v0, v1

    const/16 v1, 0x87

    aput-byte v3, v0, v1

    const/16 v1, 0x88

    aput-byte v3, v0, v1

    const/16 v1, 0x89

    aput-byte v3, v0, v1

    const/16 v1, 0x8a

    aput-byte v3, v0, v1

    const/16 v1, 0x8b

    aput-byte v3, v0, v1

    const/16 v1, 0x8c

    aput-byte v3, v0, v1

    const/16 v1, 0x8d

    aput-byte v3, v0, v1

    const/16 v1, 0x8e

    aput-byte v3, v0, v1

    const/16 v1, 0x8f

    .line 130
    aput-byte v3, v0, v1

    const/16 v1, 0x90

    aput-byte v3, v0, v1

    const/16 v1, 0x91

    aput-byte v3, v0, v1

    const/16 v1, 0x92

    aput-byte v3, v0, v1

    const/16 v1, 0x93

    aput-byte v3, v0, v1

    const/16 v1, 0x94

    aput-byte v3, v0, v1

    const/16 v1, 0x95

    aput-byte v3, v0, v1

    const/16 v1, 0x96

    aput-byte v3, v0, v1

    const/16 v1, 0x97

    aput-byte v3, v0, v1

    const/16 v1, 0x98

    aput-byte v3, v0, v1

    const/16 v1, 0x99

    aput-byte v3, v0, v1

    const/16 v1, 0x9a

    aput-byte v3, v0, v1

    const/16 v1, 0x9b

    aput-byte v3, v0, v1

    const/16 v1, 0x9c

    aput-byte v3, v0, v1

    const/16 v1, 0x9d

    aput-byte v3, v0, v1

    const/16 v1, 0x9e

    aput-byte v3, v0, v1

    const/16 v1, 0x9f

    aput-byte v3, v0, v1

    const/16 v1, 0xa0

    aput-byte v3, v0, v1

    const/16 v1, 0xa1

    aput-byte v3, v0, v1

    const/16 v1, 0xa2

    aput-byte v3, v0, v1

    const/16 v1, 0xa3

    aput-byte v3, v0, v1

    const/16 v1, 0xa4

    aput-byte v3, v0, v1

    const/16 v1, 0xa5

    .line 131
    aput-byte v3, v0, v1

    const/16 v1, 0xa6

    aput-byte v3, v0, v1

    const/16 v1, 0xa7

    aput-byte v3, v0, v1

    const/16 v1, 0xa8

    aput-byte v3, v0, v1

    const/16 v1, 0xa9

    aput-byte v3, v0, v1

    const/16 v1, 0xaa

    aput-byte v3, v0, v1

    const/16 v1, 0xab

    aput-byte v3, v0, v1

    const/16 v1, 0xac

    aput-byte v3, v0, v1

    const/16 v1, 0xad

    aput-byte v3, v0, v1

    const/16 v1, 0xae

    aput-byte v3, v0, v1

    const/16 v1, 0xaf

    aput-byte v3, v0, v1

    const/16 v1, 0xb0

    aput-byte v3, v0, v1

    const/16 v1, 0xb1

    aput-byte v3, v0, v1

    const/16 v1, 0xb2

    aput-byte v3, v0, v1

    const/16 v1, 0xb3

    aput-byte v3, v0, v1

    const/16 v1, 0xb4

    aput-byte v3, v0, v1

    const/16 v1, 0xb5

    aput-byte v3, v0, v1

    const/16 v1, 0xb6

    aput-byte v3, v0, v1

    const/16 v1, 0xb7

    aput-byte v3, v0, v1

    const/16 v1, 0xb8

    aput-byte v3, v0, v1

    const/16 v1, 0xb9

    aput-byte v3, v0, v1

    const/16 v1, 0xba

    aput-byte v3, v0, v1

    const/16 v1, 0xbb

    .line 132
    aput-byte v3, v0, v1

    const/16 v1, 0xbc

    aput-byte v3, v0, v1

    const/16 v1, 0xbd

    aput-byte v3, v0, v1

    const/16 v1, 0xbe

    aput-byte v3, v0, v1

    const/16 v1, 0xbf

    aput-byte v3, v0, v1

    const/16 v1, 0xc0

    aput-byte v3, v0, v1

    const/16 v1, 0xc1

    aput-byte v3, v0, v1

    const/16 v1, 0xc2

    aput-byte v3, v0, v1

    const/16 v1, 0xc3

    aput-byte v3, v0, v1

    const/16 v1, 0xc4

    aput-byte v3, v0, v1

    const/16 v1, 0xc5

    aput-byte v3, v0, v1

    const/16 v1, 0xc6

    aput-byte v3, v0, v1

    const/16 v1, 0xc7

    aput-byte v3, v0, v1

    const/16 v1, 0xc8

    aput-byte v3, v0, v1

    const/16 v1, 0xc9

    aput-byte v3, v0, v1

    const/16 v1, 0xca

    aput-byte v3, v0, v1

    const/16 v1, 0xcb

    aput-byte v3, v0, v1

    const/16 v1, 0xcc

    aput-byte v3, v0, v1

    const/16 v1, 0xcd

    aput-byte v3, v0, v1

    const/16 v1, 0xce

    aput-byte v3, v0, v1

    const/16 v1, 0xcf

    aput-byte v3, v0, v1

    const/16 v1, 0xd0

    aput-byte v3, v0, v1

    const/16 v1, 0xd1

    .line 133
    aput-byte v3, v0, v1

    const/16 v1, 0xd2

    aput-byte v3, v0, v1

    const/16 v1, 0xd3

    aput-byte v3, v0, v1

    const/16 v1, 0xd4

    aput-byte v3, v0, v1

    const/16 v1, 0xd5

    aput-byte v3, v0, v1

    const/16 v1, 0xd6

    aput-byte v3, v0, v1

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    const/16 v1, 0xd8

    aput-byte v3, v0, v1

    const/16 v1, 0xd9

    aput-byte v3, v0, v1

    const/16 v1, 0xda

    aput-byte v3, v0, v1

    const/16 v1, 0xdb

    aput-byte v3, v0, v1

    const/16 v1, 0xdc

    aput-byte v3, v0, v1

    const/16 v1, 0xdd

    aput-byte v3, v0, v1

    const/16 v1, 0xde

    aput-byte v3, v0, v1

    const/16 v1, 0xdf

    aput-byte v3, v0, v1

    const/16 v1, 0xe0

    aput-byte v3, v0, v1

    const/16 v1, 0xe1

    aput-byte v3, v0, v1

    const/16 v1, 0xe2

    aput-byte v3, v0, v1

    const/16 v1, 0xe3

    aput-byte v3, v0, v1

    const/16 v1, 0xe4

    aput-byte v3, v0, v1

    const/16 v1, 0xe5

    aput-byte v3, v0, v1

    const/16 v1, 0xe6

    aput-byte v3, v0, v1

    const/16 v1, 0xe7

    .line 134
    aput-byte v3, v0, v1

    const/16 v1, 0xe8

    aput-byte v3, v0, v1

    const/16 v1, 0xe9

    aput-byte v3, v0, v1

    const/16 v1, 0xea

    aput-byte v3, v0, v1

    const/16 v1, 0xeb

    aput-byte v3, v0, v1

    const/16 v1, 0xec

    aput-byte v3, v0, v1

    const/16 v1, 0xed

    aput-byte v3, v0, v1

    const/16 v1, 0xee

    aput-byte v3, v0, v1

    const/16 v1, 0xef

    aput-byte v3, v0, v1

    const/16 v1, 0xf0

    aput-byte v3, v0, v1

    const/16 v1, 0xf1

    aput-byte v3, v0, v1

    const/16 v1, 0xf2

    aput-byte v3, v0, v1

    const/16 v1, 0xf3

    aput-byte v3, v0, v1

    const/16 v1, 0xf4

    aput-byte v3, v0, v1

    const/16 v1, 0xf5

    aput-byte v3, v0, v1

    const/16 v1, 0xf6

    aput-byte v3, v0, v1

    const/16 v1, 0xf7

    aput-byte v3, v0, v1

    const/16 v1, 0xf8

    aput-byte v3, v0, v1

    const/16 v1, 0xf9

    aput-byte v3, v0, v1

    const/16 v1, 0xfa

    aput-byte v3, v0, v1

    const/16 v1, 0xfb

    aput-byte v3, v0, v1

    const/16 v1, 0xfc

    aput-byte v3, v0, v1

    const/16 v1, 0xfd

    .line 135
    aput-byte v3, v0, v1

    const/16 v1, 0xfe

    aput-byte v3, v0, v1

    const/16 v1, 0xff

    aput-byte v3, v0, v1

    .line 123
    sput-object v0, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    .line 463
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    .line 971
    const-wide v0, 0x3fdbcb7b1526e50eL    # 0.4342944819032518

    sput-wide v0, Lorg/cocos2d/utils/javolution/MathLib;->INV_LOG10:D

    .line 1188
    new-array v0, v7, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/cocos2d/utils/javolution/MathLib;->atanhi:[D

    .line 1195
    new-array v0, v7, [D

    fill-array-data v0, :array_2

    sput-object v0, Lorg/cocos2d/utils/javolution/MathLib;->atanlo:[D

    .line 1202
    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_3

    sput-object v0, Lorg/cocos2d/utils/javolution/MathLib;->aT:[D

    .line 1492
    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_4

    sput-object v0, Lorg/cocos2d/utils/javolution/MathLib;->halF:[D

    .line 1496
    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_5

    sput-object v0, Lorg/cocos2d/utils/javolution/MathLib;->ln2HI:[D

    .line 1498
    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_6

    sput-object v0, Lorg/cocos2d/utils/javolution/MathLib;->ln2LO:[D

    .line 23
    return-void

    .line 463
    nop

    :array_0
    .array-data 4
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
    .end array-data

    .line 1188
    :array_1
    .array-data 8
        0x3fddac670561bb4fL    # 0.4636476090008061
        0x3fe921fb54442d18L    # 0.7853981633974483
        0x3fef730bd281f69bL    # 0.982793723247329
        0x3ff921fb54442d18L    # 1.5707963267948966
    .end array-data

    .line 1195
    :array_2
    .array-data 8
        0x3c7a2b7f222f65e2L
        0x3c81a62633145c07L    # 3.061616997868383E-17
        0x3c7007887af0cbbdL    # 1.3903311031230998E-17
        0x3c91a62633145c07L    # 6.123233995736766E-17
    .end array-data

    .line 1202
    :array_3
    .array-data 8
        0x3fd555555555550dL    # 0.3333333333333293
        -0x403666666667143cL    # -0.19999999999876483
        0x3fc24924920083ffL    # 0.14285714272503466
        -0x40438e3901dce98fL    # -0.11111110405462356
        0x3fb745cdc54c206eL    # 0.09090887133436507
        -0x404c4f0d508b6593L    # -0.0769187620504483
        0x3fb10d66a0d03d51L    # 0.06661073137387531
        -0x405221d2ad210266L    # -0.058335701337905735
        0x3fa97b4b24760debL    # 0.049768779946159324
        -0x405d4bbbd39593d1L    # -0.036531572744216916
        0x3f90ad3ae322da11L    # 0.016285820115365782
    .end array-data

    .line 1492
    :array_4
    .array-data 8
        0x3fe0000000000000L    # 0.5
        -0x4020000000000000L    # -0.5
    .end array-data

    .line 1496
    :array_5
    .array-data 8
        0x3fe62e42fee00000L    # 0.6931471803691238
        -0x4019d1bd01200000L    # -0.6931471803691238
    .end array-data

    .line 1498
    :array_6
    .array-data 8
        0x3dea39ef35793c76L    # 1.9082149292705877E-10
        -0x4215c610ca86c38aL
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static _atan(D)D
    .locals 27
    .param p0, "x"    # D

    .prologue
    .line 1221
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v11

    .line 1222
    .local v11, "xBits":J
    const/16 v15, 0x20

    shr-long v15, v11, v15

    long-to-int v0, v15

    .line 1223
    .local v0, "__HIx":I
    long-to-int v1, v11

    .line 1225
    .local v1, "__LOx":I
    move v2, v0

    .line 1226
    .local v2, "hx":I
    const v15, 0x7fffffff

    and-int v4, v2, v15

    .line 1227
    .local v4, "ix":I
    const/high16 v15, 0x44100000    # 576.0f

    if-lt v4, v15, :cond_4

    .line 1228
    const/high16 v15, 0x7ff00000

    if-gt v4, v15, :cond_0

    .line 1229
    const/high16 v15, 0x7ff00000

    if-ne v4, v15, :cond_2

    if-eqz v1, :cond_2

    .line 1230
    :cond_0
    add-double p0, p0, p0

    .line 1269
    .end local p0    # "x":D
    :cond_1
    :goto_0
    return-wide p0

    .line 1231
    .restart local p0    # "x":D
    :cond_2
    if-lez v2, :cond_3

    .line 1232
    sget-object v15, Lorg/cocos2d/utils/javolution/MathLib;->atanhi:[D

    const/16 v16, 0x3

    aget-wide v15, v15, v16

    sget-object v17, Lorg/cocos2d/utils/javolution/MathLib;->atanlo:[D

    const/16 v18, 0x3

    aget-wide v17, v17, v18

    add-double p0, v15, v17

    goto :goto_0

    .line 1234
    :cond_3
    sget-object v15, Lorg/cocos2d/utils/javolution/MathLib;->atanhi:[D

    const/16 v16, 0x3

    aget-wide v15, v15, v16

    neg-double v15, v15

    sget-object v17, Lorg/cocos2d/utils/javolution/MathLib;->atanlo:[D

    const/16 v18, 0x3

    aget-wide v17, v17, v18

    sub-double p0, v15, v17

    goto :goto_0

    .line 1236
    :cond_4
    const/high16 v15, 0x3fdc0000    # 1.71875f

    if-ge v4, v15, :cond_6

    .line 1237
    const/high16 v15, 0x3e200000    # 0.15625f

    if-ge v4, v15, :cond_5

    .line 1238
    const-wide v15, 0x7e37e43c8800759cL    # 1.0E300

    add-double v15, v15, p0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpl-double v15, v15, v17

    if-gtz v15, :cond_1

    .line 1240
    :cond_5
    const/4 v3, -0x1

    .line 1260
    .local v3, "id":I
    :goto_1
    mul-double v13, p0, p0

    .line 1261
    .local v13, "z":D
    mul-double v9, v13, v13

    .line 1263
    .local v9, "w":D
    sget-object v15, Lorg/cocos2d/utils/javolution/MathLib;->aT:[D

    const/16 v16, 0x0

    aget-wide v15, v15, v16

    sget-object v17, Lorg/cocos2d/utils/javolution/MathLib;->aT:[D

    const/16 v18, 0x2

    aget-wide v17, v17, v18

    sget-object v19, Lorg/cocos2d/utils/javolution/MathLib;->aT:[D

    const/16 v20, 0x4

    aget-wide v19, v19, v20

    sget-object v21, Lorg/cocos2d/utils/javolution/MathLib;->aT:[D

    const/16 v22, 0x6

    aget-wide v21, v21, v22

    sget-object v23, Lorg/cocos2d/utils/javolution/MathLib;->aT:[D

    const/16 v24, 0x8

    aget-wide v23, v23, v24

    sget-object v25, Lorg/cocos2d/utils/javolution/MathLib;->aT:[D

    const/16 v26, 0xa

    aget-wide v25, v25, v26

    mul-double v25, v25, v9

    add-double v23, v23, v25

    mul-double v23, v23, v9

    add-double v21, v21, v23

    mul-double v21, v21, v9

    add-double v19, v19, v21

    mul-double v19, v19, v9

    add-double v17, v17, v19

    mul-double v17, v17, v9

    add-double v15, v15, v17

    mul-double v5, v13, v15

    .line 1264
    .local v5, "s1":D
    sget-object v15, Lorg/cocos2d/utils/javolution/MathLib;->aT:[D

    const/16 v16, 0x1

    aget-wide v15, v15, v16

    sget-object v17, Lorg/cocos2d/utils/javolution/MathLib;->aT:[D

    const/16 v18, 0x3

    aget-wide v17, v17, v18

    sget-object v19, Lorg/cocos2d/utils/javolution/MathLib;->aT:[D

    const/16 v20, 0x5

    aget-wide v19, v19, v20

    sget-object v21, Lorg/cocos2d/utils/javolution/MathLib;->aT:[D

    const/16 v22, 0x7

    aget-wide v21, v21, v22

    sget-object v23, Lorg/cocos2d/utils/javolution/MathLib;->aT:[D

    const/16 v24, 0x9

    aget-wide v23, v23, v24

    mul-double v23, v23, v9

    add-double v21, v21, v23

    mul-double v21, v21, v9

    add-double v19, v19, v21

    mul-double v19, v19, v9

    add-double v17, v17, v19

    mul-double v17, v17, v9

    add-double v15, v15, v17

    mul-double v7, v9, v15

    .line 1265
    .local v7, "s2":D
    if-gez v3, :cond_a

    .line 1266
    add-double v15, v5, v7

    mul-double v15, v15, p0

    sub-double p0, p0, v15

    goto/16 :goto_0

    .line 1242
    .end local v3    # "id":I
    .end local v5    # "s1":D
    .end local v7    # "s2":D
    .end local v9    # "w":D
    .end local v13    # "z":D
    :cond_6
    invoke-static/range {p0 .. p1}, Lorg/cocos2d/utils/javolution/MathLib;->abs(D)D

    move-result-wide p0

    .line 1243
    const/high16 v15, 0x3ff30000    # 1.8984375f

    if-ge v4, v15, :cond_8

    .line 1244
    const/high16 v15, 0x3fe60000    # 1.796875f

    if-ge v4, v15, :cond_7

    .line 1245
    const/4 v3, 0x0

    .line 1246
    .restart local v3    # "id":I
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double v15, v15, p0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v15, v15, v17

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    add-double v17, v17, p0

    div-double p0, v15, v17

    goto/16 :goto_1

    .line 1248
    .end local v3    # "id":I
    :cond_7
    const/4 v3, 0x1

    .line 1249
    .restart local v3    # "id":I
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v15, p0, v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v17, v17, p0

    div-double p0, v15, v17

    goto/16 :goto_1

    .line 1251
    .end local v3    # "id":I
    :cond_8
    const v15, 0x40038000

    if-ge v4, v15, :cond_9

    .line 1252
    const/4 v3, 0x2

    .line 1253
    .restart local v3    # "id":I
    const-wide/high16 v15, 0x3ff8000000000000L    # 1.5

    sub-double v15, p0, v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v19, 0x3ff8000000000000L    # 1.5

    mul-double v19, v19, p0

    add-double v17, v17, v19

    div-double p0, v15, v17

    goto/16 :goto_1

    .line 1255
    .end local v3    # "id":I
    :cond_9
    const/4 v3, 0x3

    .line 1256
    .restart local v3    # "id":I
    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    div-double p0, v15, p0

    goto/16 :goto_1

    .line 1268
    .restart local v5    # "s1":D
    .restart local v7    # "s2":D
    .restart local v9    # "w":D
    .restart local v13    # "z":D
    :cond_a
    sget-object v15, Lorg/cocos2d/utils/javolution/MathLib;->atanhi:[D

    aget-wide v15, v15, v3

    add-double v17, v5, v7

    mul-double v17, v17, p0

    sget-object v19, Lorg/cocos2d/utils/javolution/MathLib;->atanlo:[D

    aget-wide v19, v19, v3

    sub-double v17, v17, v19

    sub-double v17, v17, p0

    sub-double v13, v15, v17

    .line 1269
    if-gez v2, :cond_b

    neg-double v13, v13

    .end local v13    # "z":D
    :cond_b
    move-wide/from16 p0, v13

    goto/16 :goto_0
.end method

.method static _ieee754_exp(D)D
    .locals 32
    .param p0, "x"    # D

    .prologue
    .line 1509
    const-wide/16 v7, 0x0

    .local v7, "hi":D
    const-wide/16 v11, 0x0

    .line 1510
    .local v11, "lo":D
    const/4 v10, 0x0

    .line 1512
    .local v10, "k":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v15

    .line 1513
    .local v15, "xBits":J
    const/16 v22, 0x20

    shr-long v22, v15, v22

    move-wide/from16 v0, v22

    long-to-int v2, v0

    .line 1514
    .local v2, "__HIx":I
    long-to-int v4, v15

    .line 1516
    .local v4, "__LOx":I
    move v9, v2

    .line 1517
    .local v9, "hx":I
    shr-int/lit8 v22, v9, 0x1f

    and-int/lit8 v17, v22, 0x1

    .line 1518
    .local v17, "xsb":I
    const v22, 0x7fffffff

    and-int v9, v9, v22

    .line 1521
    const v22, 0x40862e42

    move/from16 v0, v22

    if-lt v9, v0, :cond_4

    .line 1522
    const/high16 v22, 0x7ff00000

    move/from16 v0, v22

    if-lt v9, v0, :cond_2

    .line 1523
    const v22, 0xfffff

    and-int v22, v22, v9

    or-int v22, v22, v4

    if-eqz v22, :cond_1

    .line 1524
    add-double p0, p0, p0

    .line 1570
    .end local p0    # "x":D
    :cond_0
    :goto_0
    return-wide p0

    .line 1526
    .restart local p0    # "x":D
    :cond_1
    if-eqz v17, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 1527
    :cond_2
    const-wide v22, 0x40862e42fefa39efL    # 709.782712893384

    cmpl-double v22, p0, v22

    if-lez v22, :cond_3

    .line 1528
    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 1529
    :cond_3
    const-wide v22, -0x3f78b6ef2ad2cfafL    # -745.1332191019411

    cmpg-double v22, p0, v22

    if-gez v22, :cond_4

    .line 1530
    const-wide/16 p0, 0x0

    goto :goto_0

    .line 1534
    :cond_4
    const v22, 0x3fd62e42

    move/from16 v0, v22

    if-le v9, v0, :cond_7

    .line 1535
    const v22, 0x3ff0a2b2

    move/from16 v0, v22

    if-ge v9, v0, :cond_6

    .line 1536
    sget-object v22, Lorg/cocos2d/utils/javolution/MathLib;->ln2HI:[D

    aget-wide v22, v22, v17

    sub-double v7, p0, v22

    .line 1537
    sget-object v22, Lorg/cocos2d/utils/javolution/MathLib;->ln2LO:[D

    aget-wide v11, v22, v17

    .line 1538
    rsub-int/lit8 v22, v17, 0x1

    sub-int v10, v22, v17

    .line 1545
    :goto_1
    sub-double p0, v7, v11

    .line 1553
    :cond_5
    :goto_2
    mul-double v13, p0, p0

    .line 1554
    .local v13, "t":D
    const-wide v22, 0x3fc555555555553eL    # 0.16666666666666602

    const-wide v24, -0x40993e93e941426dL    # -0.0027777777777015593

    const-wide v26, 0x3f11566aaf25de2cL    # 6.613756321437934E-5

    const-wide v28, -0x414442be3a2d940fL    # -1.6533902205465252E-6

    const-wide v30, 0x3e66376972bea4d0L    # 4.1381367970572385E-8

    mul-double v30, v30, v13

    add-double v28, v28, v30

    mul-double v28, v28, v13

    add-double v26, v26, v28

    mul-double v26, v26, v13

    add-double v24, v24, v26

    mul-double v24, v24, v13

    add-double v22, v22, v24

    mul-double v22, v22, v13

    sub-double v5, p0, v22

    .line 1555
    .local v5, "c":D
    if-nez v10, :cond_9

    .line 1556
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v24, p0, v5

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    sub-double v26, v5, v26

    div-double v24, v24, v26

    sub-double v24, v24, p0

    sub-double p0, v22, v24

    goto :goto_0

    .line 1540
    .end local v5    # "c":D
    .end local v13    # "t":D
    :cond_6
    const-wide v22, 0x3ff71547652b82feL    # 1.4426950408889634

    mul-double v22, v22, p0

    sget-object v24, Lorg/cocos2d/utils/javolution/MathLib;->halF:[D

    aget-wide v24, v24, v17

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v10, v0

    .line 1541
    int-to-double v13, v10

    .line 1542
    .restart local v13    # "t":D
    sget-object v22, Lorg/cocos2d/utils/javolution/MathLib;->ln2HI:[D

    const/16 v23, 0x0

    aget-wide v22, v22, v23

    mul-double v22, v22, v13

    sub-double v7, p0, v22

    .line 1543
    sget-object v22, Lorg/cocos2d/utils/javolution/MathLib;->ln2LO:[D

    const/16 v23, 0x0

    aget-wide v22, v22, v23

    mul-double v11, v13, v22

    goto :goto_1

    .line 1546
    .end local v13    # "t":D
    :cond_7
    const/high16 v22, 0x3e300000    # 0.171875f

    move/from16 v0, v22

    if-ge v9, v0, :cond_8

    .line 1547
    const-wide v22, 0x7e37e43c8800759cL    # 1.0E300

    add-double v22, v22, p0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_5

    .line 1548
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double p0, p0, v22

    goto/16 :goto_0

    .line 1550
    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .line 1558
    .restart local v5    # "c":D
    .restart local v13    # "t":D
    :cond_9
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v24, p0, v5

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    sub-double v26, v26, v5

    div-double v24, v24, v26

    sub-double v24, v11, v24

    sub-double v24, v24, v7

    sub-double v18, v22, v24

    .line 1559
    .local v18, "y":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v20

    .line 1560
    .local v20, "yBits":J
    const/16 v22, 0x20

    shr-long v22, v20, v22

    move-wide/from16 v0, v22

    long-to-int v3, v0

    .line 1561
    .local v3, "__HIy":I
    const/16 v22, -0x3fd

    move/from16 v0, v22

    if-lt v10, v0, :cond_a

    .line 1562
    shl-int/lit8 v22, v10, 0x14

    add-int v3, v3, v22

    .line 1563
    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    const/16 v24, 0x20

    shl-long v22, v22, v24

    const-wide v24, 0xffffffffL

    and-long v24, v24, v20

    or-long v20, v22, v24

    .line 1564
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    move-wide/from16 p0, v18

    .line 1565
    goto/16 :goto_0

    .line 1567
    :cond_a
    add-int/lit16 v0, v10, 0x3e8

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x14

    add-int v3, v3, v22

    .line 1568
    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    const/16 v24, 0x20

    shl-long v22, v22, v24

    const-wide v24, 0xffffffffL

    and-long v24, v24, v20

    or-long v20, v22, v24

    .line 1569
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    .line 1570
    const-wide/high16 v22, 0x170000000000000L

    mul-double p0, v18, v22

    goto/16 :goto_0
.end method

.method static _ieee754_log(D)D
    .locals 36
    .param p0, "x"    # D

    .prologue
    .line 1354
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v24

    .line 1355
    .local v24, "xBits":J
    const/16 v28, 0x20

    shr-long v28, v24, v28

    move-wide/from16 v0, v28

    long-to-int v11, v0

    .line 1356
    .local v11, "hx":I
    move-wide/from16 v0, v24

    long-to-int v15, v0

    .line 1358
    .local v15, "lx":I
    const/4 v14, 0x0

    .line 1359
    .local v14, "k":I
    const/high16 v28, 0x100000

    move/from16 v0, v28

    if-ge v11, v0, :cond_2

    .line 1360
    const v28, 0x7fffffff

    and-int v28, v28, v11

    or-int v28, v28, v15

    if-nez v28, :cond_0

    .line 1361
    const-wide/high16 v28, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 1415
    :goto_0
    return-wide v28

    .line 1362
    :cond_0
    if-gez v11, :cond_1

    .line 1363
    sub-double v28, p0, p0

    const-wide/16 v30, 0x0

    div-double v28, v28, v30

    goto :goto_0

    .line 1364
    :cond_1
    add-int/lit8 v14, v14, -0x36

    .line 1365
    const-wide/high16 v28, 0x4350000000000000L    # 1.8014398509481984E16

    mul-double p0, p0, v28

    .line 1366
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v24

    .line 1367
    const/16 v28, 0x20

    shr-long v28, v24, v28

    move-wide/from16 v0, v28

    long-to-int v11, v0

    .line 1369
    :cond_2
    const/high16 v28, 0x7ff00000

    move/from16 v0, v28

    if-lt v11, v0, :cond_3

    .line 1370
    add-double v28, p0, p0

    goto :goto_0

    .line 1371
    :cond_3
    shr-int/lit8 v28, v11, 0x14

    move/from16 v0, v28

    add-int/lit16 v0, v0, -0x3ff

    move/from16 v28, v0

    add-int v14, v14, v28

    .line 1372
    const v28, 0xfffff

    and-int v11, v11, v28

    .line 1373
    const v28, 0x95f64

    add-int v28, v28, v11

    const/high16 v29, 0x100000

    and-int v12, v28, v29

    .line 1374
    .local v12, "i":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v24

    .line 1375
    const/high16 v28, 0x3ff00000    # 1.875f

    xor-int v28, v28, v12

    or-int v2, v11, v28

    .line 1376
    .local v2, "HIx":I
    int-to-long v0, v2

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    const/16 v30, 0x20

    shl-long v28, v28, v30

    const-wide v30, 0xffffffffL

    and-long v30, v30, v24

    or-long v24, v28, v30

    .line 1377
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 1378
    shr-int/lit8 v28, v12, 0x14

    add-int v14, v14, v28

    .line 1379
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v7, p0, v28

    .line 1380
    .local v7, "f":D
    const v28, 0xfffff

    add-int/lit8 v29, v11, 0x2

    and-int v28, v28, v29

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 1381
    const-wide/16 v28, 0x0

    cmpl-double v28, v7, v28

    if-nez v28, :cond_5

    .line 1382
    if-nez v14, :cond_4

    .line 1383
    const-wide/16 v28, 0x0

    goto/16 :goto_0

    .line 1385
    :cond_4
    int-to-double v5, v14

    .line 1386
    .local v5, "dk":D
    const-wide v28, 0x3fe62e42fee00000L    # 0.6931471803691238

    mul-double v28, v28, v5

    const-wide v30, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    mul-double v30, v30, v5

    add-double v28, v28, v30

    goto/16 :goto_0

    .line 1388
    .end local v5    # "dk":D
    :cond_5
    mul-double v28, v7, v7

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    const-wide v32, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double v32, v32, v7

    sub-double v30, v30, v32

    mul-double v3, v28, v30

    .line 1389
    .local v3, "R":D
    if-nez v14, :cond_6

    .line 1390
    sub-double v28, v7, v3

    goto/16 :goto_0

    .line 1392
    :cond_6
    int-to-double v5, v14

    .line 1393
    .restart local v5    # "dk":D
    const-wide v28, 0x3fe62e42fee00000L    # 0.6931471803691238

    mul-double v28, v28, v5

    const-wide v30, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    mul-double v30, v30, v5

    sub-double v30, v3, v30

    sub-double v30, v30, v7

    sub-double v28, v28, v30

    goto/16 :goto_0

    .line 1396
    .end local v3    # "R":D
    .end local v5    # "dk":D
    :cond_7
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    add-double v28, v28, v7

    div-double v16, v7, v28

    .line 1397
    .local v16, "s":D
    int-to-double v5, v14

    .line 1398
    .restart local v5    # "dk":D
    mul-double v26, v16, v16

    .line 1399
    .local v26, "z":D
    const v28, 0x6147a

    sub-int v12, v11, v28

    .line 1400
    mul-double v22, v26, v26

    .line 1401
    .local v22, "w":D
    const v28, 0x6b851

    sub-int v13, v28, v11

    .line 1402
    .local v13, "j":I
    const-wide v28, 0x3fd999999997fa04L    # 0.3999999999940942

    const-wide v30, 0x3fcc71c51d8e78afL    # 0.22222198432149784

    const-wide v32, 0x3fc39a09d078c69fL    # 0.15313837699209373

    mul-double v32, v32, v22

    add-double v30, v30, v32

    mul-double v30, v30, v22

    add-double v28, v28, v30

    mul-double v18, v22, v28

    .line 1403
    .local v18, "t1":D
    const-wide v28, 0x3fe5555555555593L    # 0.6666666666666735

    const-wide v30, 0x3fd2492494229359L    # 0.2857142874366239

    const-wide v32, 0x3fc7466496cb03deL    # 0.1818357216161805

    const-wide v34, 0x3fc2f112df3e5244L    # 0.14798198605116586

    mul-double v34, v34, v22

    add-double v32, v32, v34

    mul-double v32, v32, v22

    add-double v30, v30, v32

    mul-double v30, v30, v22

    add-double v28, v28, v30

    mul-double v20, v26, v28

    .line 1404
    .local v20, "t2":D
    or-int/2addr v12, v13

    .line 1405
    add-double v3, v20, v18

    .line 1406
    .restart local v3    # "R":D
    if-lez v12, :cond_9

    .line 1407
    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v28, v28, v7

    mul-double v9, v28, v7

    .line 1408
    .local v9, "hfsq":D
    if-nez v14, :cond_8

    .line 1409
    add-double v28, v9, v3

    mul-double v28, v28, v16

    sub-double v28, v9, v28

    sub-double v28, v7, v28

    goto/16 :goto_0

    .line 1411
    :cond_8
    const-wide v28, 0x3fe62e42fee00000L    # 0.6931471803691238

    mul-double v28, v28, v5

    add-double v30, v9, v3

    mul-double v30, v30, v16

    const-wide v32, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    mul-double v32, v32, v5

    add-double v30, v30, v32

    sub-double v30, v9, v30

    sub-double v30, v30, v7

    sub-double v28, v28, v30

    goto/16 :goto_0

    .line 1412
    .end local v9    # "hfsq":D
    :cond_9
    if-nez v14, :cond_a

    .line 1413
    sub-double v28, v7, v3

    mul-double v28, v28, v16

    sub-double v28, v7, v28

    goto/16 :goto_0

    .line 1415
    :cond_a
    const-wide v28, 0x3fe62e42fee00000L    # 0.6931471803691238

    mul-double v28, v28, v5

    sub-double v30, v7, v3

    mul-double v30, v30, v16

    const-wide v32, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    mul-double v32, v32, v5

    sub-double v30, v30, v32

    sub-double v30, v30, v7

    sub-double v28, v28, v30

    goto/16 :goto_0
.end method

.method public static abs(D)D
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 1060
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    neg-double p0, p0

    .end local p0    # "d":D
    :cond_0
    return-wide p0
.end method

.method public static abs(F)F
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 1049
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    neg-float p0, p0

    .end local p0    # "f":F
    :cond_0
    return p0
.end method

.method public static abs(I)I
    .locals 0
    .param p0, "i"    # I

    .prologue
    .line 1029
    if-gez p0, :cond_0

    neg-int p0, p0

    .end local p0    # "i":I
    :cond_0
    return p0
.end method

.method public static abs(J)J
    .locals 2
    .param p0, "l"    # J

    .prologue
    .line 1039
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    neg-long p0, p0

    .end local p0    # "l":J
    :cond_0
    return-wide p0
.end method

.method public static acos(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 860
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {p0, p1}, Lorg/cocos2d/utils/javolution/MathLib;->asin(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static asin(D)D
    .locals 6
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 842
    cmpg-double v0, p0, v4

    if-ltz v0, :cond_0

    cmpl-double v0, p0, v2

    if-lez v0, :cond_1

    .line 843
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 848
    :goto_0
    return-wide v0

    .line 844
    :cond_1
    cmpl-double v0, p0, v4

    if-nez v0, :cond_2

    .line 845
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_0

    .line 846
    :cond_2
    cmpl-double v0, p0, v2

    if-nez v0, :cond_3

    .line 847
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_0

    .line 848
    :cond_3
    mul-double v0, p0, p0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Lorg/cocos2d/utils/javolution/MathLib;->sqrt(D)D

    move-result-wide v0

    div-double v0, p0, v0

    invoke-static {v0, v1}, Lorg/cocos2d/utils/javolution/MathLib;->atan(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static atan(D)D
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 874
    invoke-static {p0, p1}, Lorg/cocos2d/utils/javolution/MathLib;->_atan(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static atan2(DD)D
    .locals 10
    .param p0, "y"    # D
    .param p2, "x"    # D

    .prologue
    const-wide v8, 0x255bba08cf8c979dL    # 1.0E-128

    const-wide/16 v4, 0x0

    .line 887
    const-wide v0, 0x255bba08cf8c979dL    # 1.0E-128

    .line 888
    .local v0, "epsilon":D
    invoke-static {p2, p3}, Lorg/cocos2d/utils/javolution/MathLib;->abs(D)D

    move-result-wide v6

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    .line 889
    invoke-static {p0, p1}, Lorg/cocos2d/utils/javolution/MathLib;->abs(D)D

    move-result-wide v6

    invoke-static {p2, p3}, Lorg/cocos2d/utils/javolution/MathLib;->abs(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/cocos2d/utils/javolution/MathLib;->atan(D)D

    move-result-wide v2

    .line 890
    .local v2, "temp":D
    cmpg-double v6, p2, v4

    if-gez v6, :cond_0

    .line 891
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    sub-double v2, v6, v2

    .line 892
    :cond_0
    cmpg-double v4, p0, v4

    if-gez v4, :cond_1

    .line 893
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v2, v4, v2

    .line 900
    .end local v2    # "temp":D
    :cond_1
    :goto_0
    return-wide v2

    .line 895
    :cond_2
    cmpl-double v6, p0, v8

    if-lez v6, :cond_3

    .line 896
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_0

    .line 897
    :cond_3
    const-wide v6, -0x5aa445f730736863L    # -1.0E-128

    cmpg-double v6, p0, v6

    if-gez v6, :cond_4

    .line 898
    const-wide v2, 0x4012d97c7f3321d2L    # 4.71238898038469

    goto :goto_0

    :cond_4
    move-wide v2, v4

    .line 900
    goto :goto_0
.end method

.method public static bitCount(J)I
    .locals 6
    .param p0, "longValue"    # J

    .prologue
    const-wide v4, 0x3333333333333333L    # 4.667261458395856E-62

    .line 175
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, v2

    sub-long/2addr p0, v0

    .line 176
    and-long v0, p0, v4

    const/4 v2, 0x2

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    add-long p0, v0, v2

    .line 177
    const/4 v0, 0x4

    ushr-long v0, p0, v0

    add-long/2addr v0, p0

    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long p0, v0, v2

    .line 178
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 179
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 180
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 181
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method public static bitLength(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 116
    if-gez p0, :cond_0

    .line 117
    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    .line 118
    :cond_0
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_2

    const/16 v0, 0x100

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    .line 119
    :cond_1
    sget-object v0, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    ushr-int/lit8 v1, p0, 0x8

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 120
    :cond_2
    const/high16 v0, 0x1000000

    if-ge p0, v0, :cond_3

    sget-object v0, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    ushr-int/lit8 v1, p0, 0x10

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 121
    :cond_3
    sget-object v0, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    ushr-int/lit8 v1, p0, 0x18

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x18

    goto :goto_0
.end method

.method public static bitLength(J)I
    .locals 7
    .param p0, "l"    # J

    .prologue
    const/high16 v6, 0x1000000

    const/high16 v5, 0x10000

    const/16 v4, 0x100

    const/16 v1, 0x20

    .line 150
    shr-long v2, p0, v1

    long-to-int v0, v2

    .line 151
    .local v0, "i":I
    if-lez v0, :cond_4

    .line 152
    if-ge v0, v5, :cond_2

    if-ge v0, v4, :cond_1

    sget-object v1, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    aget-byte v1, v1, v0

    add-int/lit8 v1, v1, 0x20

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    sget-object v1, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    ushr-int/lit8 v2, v0, 0x8

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x28

    goto :goto_0

    .line 154
    :cond_2
    if-ge v0, v6, :cond_3

    sget-object v1, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    ushr-int/lit8 v2, v0, 0x10

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x30

    goto :goto_0

    .line 155
    :cond_3
    sget-object v1, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    ushr-int/lit8 v2, v0, 0x18

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x38

    goto :goto_0

    .line 156
    :cond_4
    if-gez v0, :cond_5

    .line 157
    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    neg-long v1, p0

    invoke-static {v1, v2}, Lorg/cocos2d/utils/javolution/MathLib;->bitLength(J)I

    move-result v1

    goto :goto_0

    .line 158
    :cond_5
    long-to-int v0, p0

    .line 159
    if-ltz v0, :cond_0

    if-ge v0, v5, :cond_7

    if-ge v0, v4, :cond_6

    sget-object v1, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    aget-byte v1, v1, v0

    goto :goto_0

    .line 160
    :cond_6
    sget-object v1, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    ushr-int/lit8 v2, v0, 0x8

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 161
    :cond_7
    if-ge v0, v6, :cond_8

    sget-object v1, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    ushr-int/lit8 v2, v0, 0x10

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 162
    :cond_8
    sget-object v1, Lorg/cocos2d/utils/javolution/MathLib;->BIT_LENGTH:[B

    ushr-int/lit8 v2, v0, 0x18

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x18

    goto :goto_0
.end method

.method public static ceil(D)D
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 784
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static cos(D)D
    .locals 2
    .param p0, "radians"    # D

    .prologue
    .line 819
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static cosh(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 922
    invoke-static {p0, p1}, Lorg/cocos2d/utils/javolution/MathLib;->exp(D)D

    move-result-wide v0

    neg-double v2, p0

    invoke-static {v2, v3}, Lorg/cocos2d/utils/javolution/MathLib;->exp(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static digitLength(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    const/16 v0, 0xa

    .line 275
    if-ltz p0, :cond_a

    .line 276
    const v1, 0x186a0

    if-lt p0, v1, :cond_5

    const v1, 0x989680

    if-lt p0, v1, :cond_3

    const v1, 0x3b9aca00

    if-lt p0, v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    const v0, 0x5f5e100

    if-lt p0, v0, :cond_2

    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    const v0, 0xf4240

    if-lt p0, v0, :cond_4

    const/4 v0, 0x7

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    goto :goto_0

    .line 278
    :cond_5
    const/16 v1, 0x64

    if-lt p0, v1, :cond_8

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_7

    const/4 v0, 0x4

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    goto :goto_0

    .line 279
    :cond_8
    if-lt p0, v0, :cond_9

    const/4 v0, 0x2

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0

    .line 280
    :cond_a
    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    .line 282
    neg-int v0, p0

    invoke-static {v0}, Lorg/cocos2d/utils/javolution/MathLib;->digitLength(I)I

    move-result v0

    goto :goto_0
.end method

.method public static digitLength(J)I
    .locals 3
    .param p0, "l"    # J

    .prologue
    const/16 v0, 0x13

    .line 294
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_a

    .line 295
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p0, v1

    if-gtz v1, :cond_1

    .line 296
    long-to-int v0, p0

    invoke-static {v0}, Lorg/cocos2d/utils/javolution/MathLib;->digitLength(I)I

    move-result v0

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    const-wide v1, 0x5af3107a4000L

    cmp-long v1, p0, v1

    if-ltz v1, :cond_5

    const-wide v1, 0x2386f26fc10000L

    cmp-long v1, p0, v1

    if-ltz v1, :cond_3

    const-wide v1, 0xde0b6b3a7640000L

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    .line 299
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    const/16 v0, 0x12

    goto :goto_0

    :cond_2
    const/16 v0, 0x11

    goto :goto_0

    .line 300
    :cond_3
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_4

    const/16 v0, 0x10

    goto :goto_0

    :cond_4
    const/16 v0, 0xf

    goto :goto_0

    .line 301
    :cond_5
    const-wide v0, 0x174876e800L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_8

    const-wide v0, 0x9184e72a000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_6

    const/16 v0, 0xe

    goto :goto_0

    .line 302
    :cond_6
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_0

    :cond_7
    const/16 v0, 0xc

    goto :goto_0

    .line 303
    :cond_8
    const-wide v0, 0x2540be400L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    const/16 v0, 0xb

    goto :goto_0

    :cond_9
    const/16 v0, 0xa

    goto :goto_0

    .line 304
    :cond_a
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, p0, v1

    if-eqz v1, :cond_0

    .line 306
    neg-long v0, p0

    invoke-static {v0, v1}, Lorg/cocos2d/utils/javolution/MathLib;->digitLength(J)I

    move-result v0

    goto :goto_0
.end method

.method public static exp(D)D
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 946
    invoke-static {p0, p1}, Lorg/cocos2d/utils/javolution/MathLib;->_ieee754_exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static floor(D)D
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 797
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static floorLog10(D)I
    .locals 7
    .param p0, "d"    # D

    .prologue
    .line 659
    const-wide v3, 0x3fd34413509f79ffL    # 0.3010299956639812

    invoke-static {p0, p1}, Lorg/cocos2d/utils/javolution/MathLib;->floorLog2(D)I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v0, v3

    .line 660
    .local v0, "guess":I
    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v0}, Lorg/cocos2d/utils/javolution/MathLib;->toDoublePow10(JI)D

    move-result-wide v1

    .line 661
    .local v1, "pow10":D
    cmpg-double v3, v1, p0

    if-gtz v3, :cond_0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    mul-double/2addr v3, v1

    cmpl-double v3, v3, p0

    if-lez v3, :cond_0

    .line 665
    .end local v0    # "guess":I
    :goto_0
    return v0

    .line 663
    .restart local v0    # "guess":I
    :cond_0
    cmpl-double v3, v1, p0

    if-lez v3, :cond_1

    .line 664
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 665
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static floorLog2(D)I
    .locals 5
    .param p0, "d"    # D

    .prologue
    .line 637
    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gtz v3, :cond_0

    .line 638
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "Negative number or zero"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 639
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 640
    .local v0, "bits":J
    const/16 v3, 0x34

    shr-long v3, v0, v3

    long-to-int v3, v3

    and-int/lit16 v2, v3, 0x7ff

    .line 641
    .local v2, "exp":I
    const/16 v3, 0x7ff

    if-ne v2, v3, :cond_1

    .line 642
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "Infinity or NaN"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 643
    :cond_1
    if-nez v2, :cond_2

    .line 644
    const-wide/high16 v3, 0x4350000000000000L    # 1.8014398509481984E16

    mul-double/2addr v3, p0

    invoke-static {v3, v4}, Lorg/cocos2d/utils/javolution/MathLib;->floorLog2(D)I

    move-result v3

    add-int/lit8 v3, v3, -0x36

    .line 645
    :goto_0
    return v3

    :cond_2
    add-int/lit16 v3, v2, -0x3ff

    goto :goto_0
.end method

.method public static log(D)D
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 958
    invoke-static {p0, p1}, Lorg/cocos2d/utils/javolution/MathLib;->_ieee754_log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static log10(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 969
    invoke-static {p0, p1}, Lorg/cocos2d/utils/javolution/MathLib;->log(D)D

    move-result-wide v0

    sget-wide v2, Lorg/cocos2d/utils/javolution/MathLib;->INV_LOG10:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static max(DD)D
    .locals 1
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 1106
    cmpl-double v0, p0, p2

    if-ltz v0, :cond_0

    .end local p0    # "x":D
    :goto_0
    return-wide p0

    .restart local p0    # "x":D
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 1094
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .end local p0    # "x":F
    :goto_0
    return p0

    .restart local p0    # "x":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static max(II)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 1072
    if-lt p0, p1, :cond_0

    .end local p0    # "x":I
    :goto_0
    return p0

    .restart local p0    # "x":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static max(JJ)J
    .locals 1
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 1083
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .end local p0    # "x":J
    :goto_0
    return-wide p0

    .restart local p0    # "x":J
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static min(DD)D
    .locals 1
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 1152
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .end local p0    # "x":D
    :goto_0
    return-wide p0

    .restart local p0    # "x":D
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static min(FF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 1140
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p0    # "x":F
    :goto_0
    return p0

    .restart local p0    # "x":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static min(II)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 1118
    if-ge p0, p1, :cond_0

    .end local p0    # "x":I
    :goto_0
    return p0

    .restart local p0    # "x":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static min(JJ)J
    .locals 1
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 1129
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .end local p0    # "x":J
    :goto_0
    return-wide p0

    .restart local p0    # "x":J
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static numberOfLeadingZeros(J)I
    .locals 4
    .param p0, "longValue"    # J

    .prologue
    .line 195
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 196
    const/16 v0, 0x40

    .line 220
    :goto_0
    return v0

    .line 197
    :cond_0
    const/4 v0, 0x1

    .line 198
    .local v0, "n":I
    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v1, v2

    .line 199
    .local v1, "x":I
    if-nez v1, :cond_1

    .line 200
    add-int/lit8 v0, v0, 0x20

    .line 201
    long-to-int v1, p0

    .line 203
    :cond_1
    ushr-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_2

    .line 204
    add-int/lit8 v0, v0, 0x10

    .line 205
    shl-int/lit8 v1, v1, 0x10

    .line 207
    :cond_2
    ushr-int/lit8 v2, v1, 0x18

    if-nez v2, :cond_3

    .line 208
    add-int/lit8 v0, v0, 0x8

    .line 209
    shl-int/lit8 v1, v1, 0x8

    .line 211
    :cond_3
    ushr-int/lit8 v2, v1, 0x1c

    if-nez v2, :cond_4

    .line 212
    add-int/lit8 v0, v0, 0x4

    .line 213
    shl-int/lit8 v1, v1, 0x4

    .line 215
    :cond_4
    ushr-int/lit8 v2, v1, 0x1e

    if-nez v2, :cond_5

    .line 216
    add-int/lit8 v0, v0, 0x2

    .line 217
    shl-int/lit8 v1, v1, 0x2

    .line 219
    :cond_5
    ushr-int/lit8 v2, v1, 0x1f

    sub-int/2addr v0, v2

    .line 220
    goto :goto_0
.end method

.method public static numberOfTrailingZeros(J)I
    .locals 5
    .param p0, "longValue"    # J

    .prologue
    .line 233
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    .line 234
    const/16 v3, 0x40

    .line 263
    :goto_0
    return v3

    .line 236
    :cond_0
    const/16 v0, 0x3f

    .line 237
    .local v0, "n":I
    long-to-int v2, p0

    .line 238
    .local v2, "y":I
    if-eqz v2, :cond_5

    .line 239
    add-int/lit8 v0, v0, -0x20

    .line 240
    move v1, v2

    .line 243
    .local v1, "x":I
    :goto_1
    shl-int/lit8 v2, v1, 0x10

    .line 244
    if-eqz v2, :cond_1

    .line 245
    add-int/lit8 v0, v0, -0x10

    .line 246
    move v1, v2

    .line 248
    :cond_1
    shl-int/lit8 v2, v1, 0x8

    .line 249
    if-eqz v2, :cond_2

    .line 250
    add-int/lit8 v0, v0, -0x8

    .line 251
    move v1, v2

    .line 253
    :cond_2
    shl-int/lit8 v2, v1, 0x4

    .line 254
    if-eqz v2, :cond_3

    .line 255
    add-int/lit8 v0, v0, -0x4

    .line 256
    move v1, v2

    .line 258
    :cond_3
    shl-int/lit8 v2, v1, 0x2

    .line 259
    if-eqz v2, :cond_4

    .line 260
    add-int/lit8 v0, v0, -0x2

    .line 261
    move v1, v2

    .line 263
    :cond_4
    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    sub-int v3, v0, v3

    goto :goto_0

    .line 242
    .end local v1    # "x":I
    :cond_5
    const/16 v3, 0x20

    ushr-long v3, p0, v3

    long-to-int v1, v3

    .restart local v1    # "x":I
    goto :goto_1
.end method

.method public static pow(DD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 983
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static random()D
    .locals 4

    .prologue
    .line 1017
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lorg/cocos2d/utils/javolution/MathLib;->random(II)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3e00000000000000L    # 4.6566128730773926E-10

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static random(DD)D
    .locals 6
    .param p0, "min"    # D
    .param p2, "max"    # D

    .prologue
    .line 99
    sget-object v2, Lorg/cocos2d/utils/javolution/MathLib;->RANDOM:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    .line 100
    .local v0, "next":D
    mul-double v2, v0, p2

    add-double/2addr v2, p0

    mul-double v4, v0, p0

    sub-double/2addr v2, v4

    return-wide v2
.end method

.method public static random(FF)F
    .locals 4
    .param p0, "min"    # F
    .param p1, "max"    # F

    .prologue
    .line 87
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/utils/javolution/MathLib;->random(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static random(II)I
    .locals 5
    .param p0, "min"    # I
    .param p1, "max"    # I

    .prologue
    .line 40
    sget-object v2, Lorg/cocos2d/utils/javolution/MathLib;->RANDOM:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 41
    .local v1, "next":I
    if-lt v1, p0, :cond_0

    if-gt v1, p1, :cond_0

    move v2, v1

    .line 51
    :goto_0
    return v2

    .line 43
    :cond_0
    const/high16 v2, -0x80000000

    add-int/2addr v1, v2

    .line 44
    if-lt v1, p0, :cond_1

    if-gt v1, p1, :cond_1

    move v2, v1

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    add-int/lit8 v2, p1, 0x1

    sub-int v0, v2, p0

    .line 49
    .local v0, "interval":I
    if-gtz v0, :cond_2

    .line 50
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interval ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_2
    rem-int v2, v1, v0

    invoke-static {v2}, Lorg/cocos2d/utils/javolution/MathLib;->abs(I)I

    move-result v2

    add-int/2addr v2, p0

    goto :goto_0
.end method

.method public static random(JJ)J
    .locals 6
    .param p0, "min"    # J
    .param p2, "max"    # J

    .prologue
    .line 64
    sget-object v4, Lorg/cocos2d/utils/javolution/MathLib;->RANDOM:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    .line 65
    .local v2, "next":J
    cmp-long v4, v2, p0

    if-ltz v4, :cond_0

    cmp-long v4, v2, p2

    if-gtz v4, :cond_0

    move-wide v4, v2

    .line 75
    :goto_0
    return-wide v4

    .line 67
    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    add-long/2addr v2, v4

    .line 68
    cmp-long v4, v2, p0

    if-ltz v4, :cond_1

    cmp-long v4, v2, p2

    if-gtz v4, :cond_1

    move-wide v4, v2

    .line 69
    goto :goto_0

    .line 72
    :cond_1
    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    sub-long v0, v4, p0

    .line 73
    .local v0, "interval":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 74
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Interval error"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_2
    rem-long v4, v2, v0

    invoke-static {v4, v5}, Lorg/cocos2d/utils/javolution/MathLib;->abs(J)J

    move-result-wide v4

    add-long/2addr v4, p0

    goto :goto_0
.end method

.method public static rem(DD)D
    .locals 6
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 767
    div-double v0, p0, p2

    .line 768
    .local v0, "tmp":D
    invoke-static {v0, v1}, Lorg/cocos2d/utils/javolution/MathLib;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 769
    invoke-static {v0, v1}, Lorg/cocos2d/utils/javolution/MathLib;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, p2

    sub-double v2, p0, v2

    .line 771
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    goto :goto_0
.end method

.method public static round(F)I
    .locals 2
    .param p0, "f"    # F

    .prologue
    .line 994
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/cocos2d/utils/javolution/MathLib;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static round(D)J
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 1006
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/cocos2d/utils/javolution/MathLib;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static sin(D)D
    .locals 2
    .param p0, "radians"    # D

    .prologue
    .line 808
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sinh(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 911
    invoke-static {p0, p1}, Lorg/cocos2d/utils/javolution/MathLib;->exp(D)D

    move-result-wide v0

    neg-double v2, p0

    invoke-static {v2, v3}, Lorg/cocos2d/utils/javolution/MathLib;->exp(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static sqrt(D)D
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 755
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static tan(D)D
    .locals 2
    .param p0, "radians"    # D

    .prologue
    .line 830
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static tanh(D)D
    .locals 6
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 933
    mul-double v0, v2, p0

    invoke-static {v0, v1}, Lorg/cocos2d/utils/javolution/MathLib;->exp(D)D

    move-result-wide v0

    sub-double/2addr v0, v4

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Lorg/cocos2d/utils/javolution/MathLib;->exp(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toDegrees(D)D
    .locals 2
    .param p0, "radians"    # D

    .prologue
    .line 744
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static toDoublePow10(JI)D
    .locals 34
    .param p0, "m"    # J
    .param p2, "n"    # I

    .prologue
    .line 354
    const-wide/16 v30, 0x0

    cmp-long v30, p0, v30

    if-nez v30, :cond_0

    .line 355
    const-wide/16 v30, 0x0

    .line 456
    :goto_0
    return-wide v30

    .line 356
    :cond_0
    const-wide/high16 v30, -0x8000000000000000L

    cmp-long v30, p0, v30

    if-nez v30, :cond_1

    .line 357
    const-wide v30, -0xcccccccccccccccL

    add-int/lit8 v32, p2, 0x1

    invoke-static/range {v30 .. v32}, Lorg/cocos2d/utils/javolution/MathLib;->toDoublePow10(JI)D

    move-result-wide v30

    goto :goto_0

    .line 358
    :cond_1
    const-wide/16 v30, 0x0

    cmp-long v30, p0, v30

    if-gez v30, :cond_2

    .line 359
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/cocos2d/utils/javolution/MathLib;->toDoublePow10(JI)D

    move-result-wide v30

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    goto :goto_0

    .line 360
    :cond_2
    if-ltz p2, :cond_a

    .line 361
    const/16 v30, 0x134

    move/from16 v0, p2

    move/from16 v1, v30

    if-le v0, v1, :cond_3

    .line 362
    const-wide/high16 v30, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 364
    :cond_3
    const-wide/16 v22, 0x0

    .line 365
    .local v22, "x0":J
    const-wide/16 v24, 0x0

    .line 366
    .local v24, "x1":J
    const-wide v30, 0xffffffffL

    and-long v26, p0, v30

    .line 367
    .local v26, "x2":J
    const/16 v30, 0x20

    ushr-long v28, p0, v30

    .line 368
    .local v28, "x3":J
    const/4 v10, 0x0

    .line 369
    .local v10, "pow2":I
    :cond_4
    :goto_1
    if-nez p2, :cond_5

    .line 405
    invoke-static/range {v28 .. v29}, Lorg/cocos2d/utils/javolution/MathLib;->bitLength(J)I

    move-result v30

    rsub-int/lit8 v17, v30, 0x1f

    .line 406
    .local v17, "shift":I
    sub-int v10, v10, v17

    .line 407
    if-gez v17, :cond_9

    const/16 v30, 0x1f

    shl-long v30, v28, v30

    const/16 v32, 0x1

    ushr-long v32, v26, v32

    or-long v8, v30, v32

    .line 409
    .local v8, "mantissa":J
    :goto_2
    invoke-static {v8, v9, v10}, Lorg/cocos2d/utils/javolution/MathLib;->toDoublePow2(JI)D

    move-result-wide v30

    goto :goto_0

    .line 370
    .end local v8    # "mantissa":J
    .end local v17    # "shift":I
    :cond_5
    sget-object v30, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, p2

    move/from16 v1, v30

    if-lt v0, v1, :cond_8

    sget-object v30, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v7, v30, -0x1

    .line 371
    .local v7, "i":I
    :goto_3
    sget-object v30, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    aget v5, v30, v7

    .line 373
    .local v5, "coef":I
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v30, v0

    if-eqz v30, :cond_6

    .line 374
    int-to-long v0, v5

    move-wide/from16 v30, v0

    mul-long v22, v22, v30

    .line 375
    :cond_6
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v30, v0

    if-eqz v30, :cond_7

    .line 376
    int-to-long v0, v5

    move-wide/from16 v30, v0

    mul-long v24, v24, v30

    .line 377
    :cond_7
    int-to-long v0, v5

    move-wide/from16 v30, v0

    mul-long v26, v26, v30

    .line 378
    int-to-long v0, v5

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    .line 380
    const/16 v30, 0x20

    ushr-long v30, v22, v30

    add-long v24, v24, v30

    .line 381
    const-wide v30, 0xffffffffL

    and-long v22, v22, v30

    .line 383
    const/16 v30, 0x20

    ushr-long v30, v24, v30

    add-long v26, v26, v30

    .line 384
    const-wide v30, 0xffffffffL

    and-long v24, v24, v30

    .line 386
    const/16 v30, 0x20

    ushr-long v30, v26, v30

    add-long v28, v28, v30

    .line 387
    const-wide v30, 0xffffffffL

    and-long v26, v26, v30

    .line 390
    add-int/2addr v10, v7

    .line 391
    sub-int p2, p2, v7

    .line 394
    const/16 v30, 0x20

    ushr-long v3, v28, v30

    .line 395
    .local v3, "carry":J
    const-wide/16 v30, 0x0

    cmp-long v30, v3, v30

    if-eqz v30, :cond_4

    .line 396
    move-wide/from16 v22, v24

    .line 397
    move-wide/from16 v24, v26

    .line 398
    const-wide v30, 0xffffffffL

    and-long v26, v28, v30

    .line 399
    move-wide/from16 v28, v3

    .line 400
    add-int/lit8 v10, v10, 0x20

    goto/16 :goto_1

    .end local v3    # "carry":J
    .end local v5    # "coef":I
    .end local v7    # "i":I
    :cond_8
    move/from16 v7, p2

    .line 370
    goto :goto_3

    .line 408
    .restart local v17    # "shift":I
    :cond_9
    const/16 v30, 0x20

    shl-long v30, v28, v30

    or-long v30, v30, v26

    shl-long v30, v30, v17

    rsub-int/lit8 v32, v17, 0x20

    ushr-long v32, v24, v32

    or-long v8, v30, v32

    goto/16 :goto_2

    .line 412
    .end local v10    # "pow2":I
    .end local v17    # "shift":I
    .end local v22    # "x0":J
    .end local v24    # "x1":J
    .end local v26    # "x2":J
    .end local v28    # "x3":J
    :cond_a
    const/16 v30, -0x158

    move/from16 v0, p2

    move/from16 v1, v30

    if-ge v0, v1, :cond_b

    .line 413
    const-wide/16 v30, 0x0

    goto/16 :goto_0

    .line 416
    :cond_b
    move-wide/from16 v24, p0

    .line 417
    .restart local v24    # "x1":J
    const-wide/16 v22, 0x0

    .line 418
    .restart local v22    # "x0":J
    const/4 v10, 0x0

    .line 422
    .restart local v10    # "pow2":I
    :goto_4
    invoke-static/range {v24 .. v25}, Lorg/cocos2d/utils/javolution/MathLib;->bitLength(J)I

    move-result v30

    rsub-int/lit8 v17, v30, 0x3f

    .line 423
    .restart local v17    # "shift":I
    shl-long v24, v24, v17

    .line 424
    rsub-int/lit8 v30, v17, 0x3f

    ushr-long v30, v22, v30

    or-long v24, v24, v30

    .line 425
    shl-long v30, v22, v17

    const-wide v32, 0x7fffffffffffffffL

    and-long v22, v30, v32

    .line 426
    sub-int v10, v10, v17

    .line 429
    if-nez p2, :cond_c

    .line 456
    move-wide/from16 v0, v24

    invoke-static {v0, v1, v10}, Lorg/cocos2d/utils/javolution/MathLib;->toDoublePow2(JI)D

    move-result-wide v30

    goto/16 :goto_0

    .line 433
    :cond_c
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v30, v0

    sget-object v31, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_d

    sget-object v30, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v7, v30, -0x1

    .line 434
    .restart local v7    # "i":I
    :goto_5
    sget-object v30, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    aget v6, v30, v7

    .line 437
    .local v6, "divisor":I
    const/16 v30, 0x20

    ushr-long v18, v24, v30

    .line 438
    .local v18, "wh":J
    int-to-long v0, v6

    move-wide/from16 v30, v0

    div-long v11, v18, v30

    .line 439
    .local v11, "qh":J
    int-to-long v0, v6

    move-wide/from16 v30, v0

    mul-long v30, v30, v11

    sub-long v15, v18, v30

    .line 440
    .local v15, "r":J
    const/16 v30, 0x20

    shl-long v30, v15, v30

    const-wide v32, 0xffffffffL

    and-long v32, v32, v24

    or-long v20, v30, v32

    .line 441
    .local v20, "wl":J
    int-to-long v0, v6

    move-wide/from16 v30, v0

    div-long v13, v20, v30

    .line 442
    .local v13, "ql":J
    int-to-long v0, v6

    move-wide/from16 v30, v0

    mul-long v30, v30, v13

    sub-long v15, v20, v30

    .line 443
    const/16 v30, 0x20

    shl-long v30, v11, v30

    or-long v24, v30, v13

    .line 445
    const/16 v30, 0x1f

    shl-long v30, v15, v30

    const/16 v32, 0x20

    ushr-long v32, v22, v32

    or-long v18, v30, v32

    .line 446
    int-to-long v0, v6

    move-wide/from16 v30, v0

    div-long v11, v18, v30

    .line 447
    int-to-long v0, v6

    move-wide/from16 v30, v0

    mul-long v30, v30, v11

    sub-long v15, v18, v30

    .line 448
    const/16 v30, 0x20

    shl-long v30, v15, v30

    const-wide v32, 0xffffffffL

    and-long v32, v32, v22

    or-long v20, v30, v32

    .line 449
    int-to-long v0, v6

    move-wide/from16 v30, v0

    div-long v13, v20, v30

    .line 450
    const/16 v30, 0x20

    shl-long v30, v11, v30

    or-long v22, v30, v13

    .line 453
    add-int p2, p2, v7

    .line 454
    sub-int/2addr v10, v7

    .line 419
    goto/16 :goto_4

    .line 433
    .end local v6    # "divisor":I
    .end local v7    # "i":I
    .end local v11    # "qh":J
    .end local v13    # "ql":J
    .end local v15    # "r":J
    .end local v18    # "wh":J
    .end local v20    # "wl":J
    :cond_d
    move/from16 v0, p2

    neg-int v7, v0

    goto :goto_5
.end method

.method public static toDoublePow2(JI)D
    .locals 12
    .param p0, "m"    # J
    .param p2, "n"    # I

    .prologue
    .line 318
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-nez v6, :cond_0

    .line 319
    const-wide/16 v6, 0x0

    .line 341
    :goto_0
    return-wide v6

    .line 320
    :cond_0
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, p0, v6

    if-nez v6, :cond_1

    .line 321
    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    add-int/lit8 v8, p2, 0x1

    invoke-static {v6, v7, v8}, Lorg/cocos2d/utils/javolution/MathLib;->toDoublePow2(JI)D

    move-result-wide v6

    goto :goto_0

    .line 322
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-gez v6, :cond_2

    .line 323
    neg-long v6, p0

    invoke-static {v6, v7, p2}, Lorg/cocos2d/utils/javolution/MathLib;->toDoublePow2(JI)D

    move-result-wide v6

    neg-double v6, v6

    goto :goto_0

    .line 324
    :cond_2
    invoke-static {p0, p1}, Lorg/cocos2d/utils/javolution/MathLib;->bitLength(J)I

    move-result v0

    .line 325
    .local v0, "bitLength":I
    add-int/lit8 v5, v0, -0x35

    .line 326
    .local v5, "shift":I
    const-wide/16 v6, 0x433

    int-to-long v8, p2

    add-long/2addr v6, v8

    int-to-long v8, v5

    add-long v3, v6, v8

    .line 327
    .local v3, "exp":J
    const-wide/16 v6, 0x7ff

    cmp-long v6, v3, v6

    if-ltz v6, :cond_3

    .line 328
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 329
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gtz v6, :cond_5

    .line 330
    const-wide/16 v6, -0x36

    cmp-long v6, v3, v6

    if-gtz v6, :cond_4

    .line 331
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 332
    :cond_4
    add-int/lit8 v6, p2, 0x36

    invoke-static {p0, p1, v6}, Lorg/cocos2d/utils/javolution/MathLib;->toDoublePow2(JI)D

    move-result-wide v6

    const-wide/high16 v8, 0x4350000000000000L    # 1.8014398509481984E16

    div-double/2addr v6, v8

    goto :goto_0

    .line 335
    :cond_5
    if-lez v5, :cond_6

    shr-long v6, p0, v5

    add-int/lit8 v8, v5, -0x1

    shr-long v8, p0, v8

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    add-long v1, v6, v8

    .line 337
    .local v1, "bits":J
    :goto_1
    const/16 v6, 0x34

    shr-long v6, v1, v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    const-wide/16 v6, 0x7ff

    cmp-long v6, v3, v6

    if-ltz v6, :cond_7

    .line 338
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 336
    .end local v1    # "bits":J
    :cond_6
    neg-int v6, v5

    shl-long v1, p0, v6

    goto :goto_1

    .line 339
    .restart local v1    # "bits":J
    :cond_7
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v1, v6

    .line 340
    const/16 v6, 0x34

    shl-long v6, v3, v6

    or-long/2addr v1, v6

    .line 341
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    goto/16 :goto_0
.end method

.method public static toLongPow10(DI)J
    .locals 39
    .param p0, "d"    # D
    .param p2, "n"    # I

    .prologue
    .line 512
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 513
    .local v2, "bits":J
    const/16 v33, 0x3f

    shr-long v33, v2, v33

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-eqz v33, :cond_0

    const/4 v10, 0x1

    .line 514
    .local v10, "isNegative":Z
    :goto_0
    const/16 v33, 0x34

    shr-long v33, v2, v33

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    and-int/lit16 v8, v0, 0x7ff

    .line 515
    .local v8, "exp":I
    const-wide v33, 0xfffffffffffffL

    and-long v11, v2, v33

    .line 516
    .local v11, "m":J
    const/16 v33, 0x7ff

    move/from16 v0, v33

    if-ne v8, v0, :cond_1

    .line 517
    new-instance v33, Ljava/lang/ArithmeticException;

    .line 518
    const-string v34, "Cannot convert to long (Infinity or NaN)"

    .line 517
    invoke-direct/range {v33 .. v34}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 513
    .end local v8    # "exp":I
    .end local v10    # "isNegative":Z
    .end local v11    # "m":J
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 519
    .restart local v8    # "exp":I
    .restart local v10    # "isNegative":Z
    .restart local v11    # "m":J
    :cond_1
    if-nez v8, :cond_3

    .line 520
    const-wide/16 v33, 0x0

    cmp-long v33, v11, v33

    if-nez v33, :cond_2

    .line 521
    const-wide/16 v33, 0x0

    .line 623
    :goto_1
    return-wide v33

    .line 522
    :cond_2
    const-wide v33, 0x4341c37937e08000L    # 1.0E16

    mul-double v33, v33, p0

    add-int/lit8 v35, p2, -0x10

    invoke-static/range {v33 .. v35}, Lorg/cocos2d/utils/javolution/MathLib;->toLongPow10(DI)J

    move-result-wide v33

    goto :goto_1

    .line 524
    :cond_3
    const-wide/high16 v33, 0x10000000000000L

    or-long v11, v11, v33

    .line 525
    add-int/lit16 v0, v8, -0x3ff

    move/from16 v33, v0

    add-int/lit8 v13, v33, -0x34

    .line 527
    .local v13, "pow2":I
    if-ltz p2, :cond_a

    .line 529
    const-wide/16 v25, 0x0

    .line 530
    .local v25, "x0":J
    const-wide/16 v27, 0x0

    .line 531
    .local v27, "x1":J
    const-wide v33, 0xffffffffL

    and-long v29, v11, v33

    .line 532
    .local v29, "x2":J
    const/16 v33, 0x20

    ushr-long v31, v11, v33

    .line 533
    .local v31, "x3":J
    :cond_4
    :goto_2
    if-nez p2, :cond_5

    .line 569
    invoke-static/range {v31 .. v32}, Lorg/cocos2d/utils/javolution/MathLib;->bitLength(J)I

    move-result v33

    rsub-int/lit8 v20, v33, 0x1f

    .line 570
    .local v20, "shift":I
    sub-int v13, v13, v20

    .line 571
    if-gez v20, :cond_9

    const/16 v33, 0x1f

    shl-long v33, v31, v33

    const/16 v35, 0x1

    ushr-long v35, v29, v35

    or-long v11, v33, v35

    .line 618
    .end local v29    # "x2":J
    .end local v31    # "x3":J
    :goto_3
    if-lez v13, :cond_d

    .line 619
    new-instance v33, Ljava/lang/ArithmeticException;

    const-string v34, "Overflow"

    invoke-direct/range {v33 .. v34}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 534
    .end local v20    # "shift":I
    .restart local v29    # "x2":J
    .restart local v31    # "x3":J
    :cond_5
    sget-object v33, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, p2

    move/from16 v1, v33

    if-lt v0, v1, :cond_8

    sget-object v33, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    add-int/lit8 v9, v33, -0x1

    .line 535
    .local v9, "i":I
    :goto_4
    sget-object v33, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    aget v6, v33, v9

    .line 537
    .local v6, "coef":I
    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v33, v0

    if-eqz v33, :cond_6

    .line 538
    int-to-long v0, v6

    move-wide/from16 v33, v0

    mul-long v25, v25, v33

    .line 539
    :cond_6
    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v33, v0

    if-eqz v33, :cond_7

    .line 540
    int-to-long v0, v6

    move-wide/from16 v33, v0

    mul-long v27, v27, v33

    .line 541
    :cond_7
    int-to-long v0, v6

    move-wide/from16 v33, v0

    mul-long v29, v29, v33

    .line 542
    int-to-long v0, v6

    move-wide/from16 v33, v0

    mul-long v31, v31, v33

    .line 544
    const/16 v33, 0x20

    ushr-long v33, v25, v33

    add-long v27, v27, v33

    .line 545
    const-wide v33, 0xffffffffL

    and-long v25, v25, v33

    .line 547
    const/16 v33, 0x20

    ushr-long v33, v27, v33

    add-long v29, v29, v33

    .line 548
    const-wide v33, 0xffffffffL

    and-long v27, v27, v33

    .line 550
    const/16 v33, 0x20

    ushr-long v33, v29, v33

    add-long v31, v31, v33

    .line 551
    const-wide v33, 0xffffffffL

    and-long v29, v29, v33

    .line 554
    add-int/2addr v13, v9

    .line 555
    sub-int p2, p2, v9

    .line 558
    const/16 v33, 0x20

    ushr-long v4, v31, v33

    .line 559
    .local v4, "carry":J
    const-wide/16 v33, 0x0

    cmp-long v33, v4, v33

    if-eqz v33, :cond_4

    .line 560
    move-wide/from16 v25, v27

    .line 561
    move-wide/from16 v27, v29

    .line 562
    const-wide v33, 0xffffffffL

    and-long v29, v31, v33

    .line 563
    move-wide/from16 v31, v4

    .line 564
    add-int/lit8 v13, v13, 0x20

    goto/16 :goto_2

    .end local v4    # "carry":J
    .end local v6    # "coef":I
    .end local v9    # "i":I
    :cond_8
    move/from16 v9, p2

    .line 534
    goto :goto_4

    .line 572
    .restart local v20    # "shift":I
    :cond_9
    const/16 v33, 0x20

    shl-long v33, v31, v33

    or-long v33, v33, v29

    shl-long v33, v33, v20

    rsub-int/lit8 v35, v20, 0x20

    ushr-long v35, v27, v35

    or-long v11, v33, v35

    goto/16 :goto_3

    .line 577
    .end local v20    # "shift":I
    .end local v25    # "x0":J
    .end local v27    # "x1":J
    .end local v29    # "x2":J
    .end local v31    # "x3":J
    :cond_a
    move-wide/from16 v27, v11

    .line 578
    .restart local v27    # "x1":J
    const-wide/16 v25, 0x0

    .line 582
    .restart local v25    # "x0":J
    :goto_5
    invoke-static/range {v27 .. v28}, Lorg/cocos2d/utils/javolution/MathLib;->bitLength(J)I

    move-result v33

    rsub-int/lit8 v20, v33, 0x3f

    .line 583
    .restart local v20    # "shift":I
    shl-long v27, v27, v20

    .line 584
    rsub-int/lit8 v33, v20, 0x3f

    ushr-long v33, v25, v33

    or-long v27, v27, v33

    .line 585
    shl-long v33, v25, v20

    const-wide v35, 0x7fffffffffffffffL

    and-long v25, v33, v35

    .line 586
    sub-int v13, v13, v20

    .line 589
    if-nez p2, :cond_b

    .line 616
    move-wide/from16 v11, v27

    goto/16 :goto_3

    .line 593
    :cond_b
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v33, v0

    sget-object v34, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_c

    sget-object v33, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    add-int/lit8 v9, v33, -0x1

    .line 594
    .restart local v9    # "i":I
    :goto_6
    sget-object v33, Lorg/cocos2d/utils/javolution/MathLib;->POW5_INT:[I

    aget v7, v33, v9

    .line 597
    .local v7, "divisor":I
    const/16 v33, 0x20

    ushr-long v21, v27, v33

    .line 598
    .local v21, "wh":J
    int-to-long v0, v7

    move-wide/from16 v33, v0

    div-long v14, v21, v33

    .line 599
    .local v14, "qh":J
    int-to-long v0, v7

    move-wide/from16 v33, v0

    mul-long v33, v33, v14

    sub-long v18, v21, v33

    .line 600
    .local v18, "r":J
    const/16 v33, 0x20

    shl-long v33, v18, v33

    const-wide v35, 0xffffffffL

    and-long v35, v35, v27

    or-long v23, v33, v35

    .line 601
    .local v23, "wl":J
    int-to-long v0, v7

    move-wide/from16 v33, v0

    div-long v16, v23, v33

    .line 602
    .local v16, "ql":J
    int-to-long v0, v7

    move-wide/from16 v33, v0

    mul-long v33, v33, v16

    sub-long v18, v23, v33

    .line 603
    const/16 v33, 0x20

    shl-long v33, v14, v33

    or-long v27, v33, v16

    .line 605
    const/16 v33, 0x1f

    shl-long v33, v18, v33

    const/16 v35, 0x20

    ushr-long v35, v25, v35

    or-long v21, v33, v35

    .line 606
    int-to-long v0, v7

    move-wide/from16 v33, v0

    div-long v14, v21, v33

    .line 607
    int-to-long v0, v7

    move-wide/from16 v33, v0

    mul-long v33, v33, v14

    sub-long v18, v21, v33

    .line 608
    const/16 v33, 0x20

    shl-long v33, v18, v33

    const-wide v35, 0xffffffffL

    and-long v35, v35, v25

    or-long v23, v33, v35

    .line 609
    int-to-long v0, v7

    move-wide/from16 v33, v0

    div-long v16, v23, v33

    .line 610
    const/16 v33, 0x20

    shl-long v33, v14, v33

    or-long v25, v33, v16

    .line 613
    add-int p2, p2, v9

    .line 614
    sub-int/2addr v13, v9

    .line 579
    goto/16 :goto_5

    .line 593
    .end local v7    # "divisor":I
    .end local v9    # "i":I
    .end local v14    # "qh":J
    .end local v16    # "ql":J
    .end local v18    # "r":J
    .end local v21    # "wh":J
    .end local v23    # "wl":J
    :cond_c
    move/from16 v0, p2

    neg-int v9, v0

    goto :goto_6

    .line 620
    :cond_d
    const/16 v33, -0x3f

    move/from16 v0, v33

    if-ge v13, v0, :cond_e

    .line 621
    const-wide/16 v33, 0x0

    goto/16 :goto_1

    .line 622
    :cond_e
    neg-int v0, v13

    move/from16 v33, v0

    shr-long v33, v11, v33

    add-int/lit8 v35, v13, 0x1

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    shr-long v35, v11, v35

    const-wide/16 v37, 0x1

    and-long v35, v35, v37

    add-long v11, v33, v35

    .line 623
    if-eqz v10, :cond_f

    neg-long v0, v11

    move-wide/from16 v33, v0

    goto/16 :goto_1

    :cond_f
    move-wide/from16 v33, v11

    goto/16 :goto_1
.end method

.method public static toLongPow2(DI)J
    .locals 15
    .param p0, "d"    # D
    .param p2, "n"    # I

    .prologue
    .line 479
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 480
    .local v1, "bits":J
    const/16 v9, 0x3f

    shr-long v9, v1, v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_0

    const/4 v4, 0x1

    .line 481
    .local v4, "isNegative":Z
    :goto_0
    const/16 v9, 0x34

    shr-long v9, v1, v9

    long-to-int v9, v9

    and-int/lit16 v3, v9, 0x7ff

    .line 482
    .local v3, "exp":I
    const-wide v9, 0xfffffffffffffL

    and-long v5, v1, v9

    .line 483
    .local v5, "m":J
    const/16 v9, 0x7ff

    if-ne v3, v9, :cond_1

    .line 484
    new-instance v9, Ljava/lang/ArithmeticException;

    .line 485
    const-string v10, "Cannot convert to long (Infinity or NaN)"

    .line 484
    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 480
    .end local v3    # "exp":I
    .end local v4    # "isNegative":Z
    .end local v5    # "m":J
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 486
    .restart local v3    # "exp":I
    .restart local v4    # "isNegative":Z
    .restart local v5    # "m":J
    :cond_1
    if-nez v3, :cond_3

    .line 487
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_2

    .line 488
    const-wide/16 v9, 0x0

    .line 499
    :goto_1
    return-wide v9

    .line 489
    :cond_2
    const-wide/high16 v9, 0x4350000000000000L    # 1.8014398509481984E16

    mul-double/2addr v9, p0

    add-int/lit8 v11, p2, -0x36

    invoke-static {v9, v10, v11}, Lorg/cocos2d/utils/javolution/MathLib;->toLongPow2(DI)J

    move-result-wide v9

    goto :goto_1

    .line 491
    :cond_3
    const-wide/high16 v9, 0x10000000000000L

    or-long/2addr v5, v9

    .line 492
    int-to-long v9, v3

    const-wide/16 v11, 0x3ff

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x34

    sub-long/2addr v9, v11

    move/from16 v0, p2

    int-to-long v11, v0

    add-long v7, v9, v11

    .line 493
    .local v7, "shift":J
    const-wide/16 v9, -0x40

    cmp-long v9, v7, v9

    if-gtz v9, :cond_4

    .line 494
    const-wide/16 v9, 0x0

    goto :goto_1

    .line 495
    :cond_4
    const-wide/16 v9, 0xb

    cmp-long v9, v7, v9

    if-ltz v9, :cond_5

    .line 496
    new-instance v9, Ljava/lang/ArithmeticException;

    .line 497
    const-string v10, "Cannot convert to long (overflow)"

    .line 496
    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 498
    :cond_5
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_6

    long-to-int v9, v7

    shl-long/2addr v5, v9

    .line 499
    :goto_2
    if-eqz v4, :cond_7

    neg-long v9, v5

    goto :goto_1

    .line 498
    :cond_6
    neg-long v9, v7

    long-to-int v9, v9

    shr-long v9, v5, v9

    const-wide/16 v11, 0x1

    add-long/2addr v11, v7

    neg-long v11, v11

    long-to-int v11, v11

    shr-long v11, v5, v11

    const-wide/16 v13, 0x1

    and-long/2addr v11, v13

    add-long v5, v9, v11

    goto :goto_2

    :cond_7
    move-wide v9, v5

    .line 499
    goto :goto_1
.end method

.method public static toRadians(D)D
    .locals 2
    .param p0, "degrees"    # D

    .prologue
    .line 733
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, p0

    return-wide v0
.end method
