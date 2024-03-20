.class public abstract Lmiuix/animation/property/ViewProperty;
.super Lmiuix/animation/property/FloatProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ALPHA:Lmiuix/animation/property/ViewProperty;

.field public static final AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

.field public static final BACKGROUND:Lmiuix/animation/property/ViewProperty;

.field public static final FOREGROUND:Lmiuix/animation/property/ViewProperty;

.field public static final HEIGHT:Lmiuix/animation/property/ViewProperty;

.field public static final ROTATION:Lmiuix/animation/property/ViewProperty;

.field public static final ROTATION_X:Lmiuix/animation/property/ViewProperty;

.field public static final ROTATION_Y:Lmiuix/animation/property/ViewProperty;

.field public static final SCALE_X:Lmiuix/animation/property/ViewProperty;

.field public static final SCALE_Y:Lmiuix/animation/property/ViewProperty;

.field public static final SCROLL_X:Lmiuix/animation/property/ViewProperty;

.field public static final SCROLL_Y:Lmiuix/animation/property/ViewProperty;

.field public static final TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

.field public static final TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

.field public static final TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

.field public static final WIDTH:Lmiuix/animation/property/ViewProperty;

.field public static final X:Lmiuix/animation/property/ViewProperty;

.field public static final Y:Lmiuix/animation/property/ViewProperty;

.field public static final Z:Lmiuix/animation/property/ViewProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmiuix/animation/property/ViewProperty$1;

    .line 2
    const-string v1, "translationX"

    .line 4
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$1;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 9
    new-instance v0, Lmiuix/animation/property/ViewProperty$2;

    .line 11
    const-string v1, "translationY"

    .line 13
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$2;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 18
    new-instance v0, Lmiuix/animation/property/ViewProperty$3;

    .line 20
    const-string v1, "translationZ"

    .line 22
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$3;-><init>(Ljava/lang/String;)V

    .line 24
    sput-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

    .line 27
    new-instance v0, Lmiuix/animation/property/ViewProperty$4;

    .line 29
    const-string v1, "scaleX"

    .line 31
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$4;-><init>(Ljava/lang/String;)V

    .line 33
    sput-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 36
    new-instance v0, Lmiuix/animation/property/ViewProperty$5;

    .line 38
    const-string v1, "scaleY"

    .line 40
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$5;-><init>(Ljava/lang/String;)V

    .line 42
    sput-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 45
    new-instance v0, Lmiuix/animation/property/ViewProperty$6;

    .line 47
    const-string v1, "rotation"

    .line 49
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$6;-><init>(Ljava/lang/String;)V

    .line 51
    sput-object v0, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    .line 54
    new-instance v0, Lmiuix/animation/property/ViewProperty$7;

    .line 56
    const-string v1, "rotationX"

    .line 58
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$7;-><init>(Ljava/lang/String;)V

    .line 60
    sput-object v0, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    .line 63
    new-instance v0, Lmiuix/animation/property/ViewProperty$8;

    .line 65
    const-string v1, "rotationY"

    .line 67
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$8;-><init>(Ljava/lang/String;)V

    .line 69
    sput-object v0, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 72
    new-instance v0, Lmiuix/animation/property/ViewProperty$9;

    .line 74
    const-string v1, "x"

    .line 76
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$9;-><init>(Ljava/lang/String;)V

    .line 78
    sput-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 81
    new-instance v0, Lmiuix/animation/property/ViewProperty$10;

    .line 83
    const-string v1, "y"

    .line 85
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$10;-><init>(Ljava/lang/String;)V

    .line 87
    sput-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 90
    new-instance v0, Lmiuix/animation/property/ViewProperty$11;

    .line 92
    const-string v1, "z"

    .line 94
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$11;-><init>(Ljava/lang/String;)V

    .line 96
    sput-object v0, Lmiuix/animation/property/ViewProperty;->Z:Lmiuix/animation/property/ViewProperty;

    .line 99
    new-instance v0, Lmiuix/animation/property/ViewProperty$12;

    .line 101
    const-string v1, "height"

    .line 103
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$12;-><init>(Ljava/lang/String;)V

    .line 105
    sput-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 108
    new-instance v0, Lmiuix/animation/property/ViewProperty$13;

    .line 110
    const-string v1, "width"

    .line 112
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$13;-><init>(Ljava/lang/String;)V

    .line 114
    sput-object v0, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 117
    new-instance v0, Lmiuix/animation/property/ViewProperty$14;

    .line 119
    const-string v1, "alpha"

    .line 121
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$14;-><init>(Ljava/lang/String;)V

    .line 123
    sput-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 126
    new-instance v0, Lmiuix/animation/property/ViewProperty$15;

    .line 128
    const-string v1, "autoAlpha"

    .line 130
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$15;-><init>(Ljava/lang/String;)V

    .line 132
    sput-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 135
    new-instance v0, Lmiuix/animation/property/ViewProperty$16;

    .line 137
    const-string v1, "scrollX"

    .line 139
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$16;-><init>(Ljava/lang/String;)V

    .line 141
    sput-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    .line 144
    new-instance v0, Lmiuix/animation/property/ViewProperty$17;

    .line 146
    const-string v1, "scrollY"

    .line 148
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$17;-><init>(Ljava/lang/String;)V

    .line 150
    sput-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_Y:Lmiuix/animation/property/ViewProperty;

    .line 153
    new-instance v0, Lmiuix/animation/property/ViewProperty$18;

    .line 155
    const-string v1, "deprecated_foreground"

    .line 157
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$18;-><init>(Ljava/lang/String;)V

    .line 159
    sput-object v0, Lmiuix/animation/property/ViewProperty;->FOREGROUND:Lmiuix/animation/property/ViewProperty;

    .line 162
    new-instance v0, Lmiuix/animation/property/ViewProperty$19;

    .line 164
    const-string v1, "deprecated_background"

    .line 166
    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$19;-><init>(Ljava/lang/String;)V

    .line 168
    sput-object v0, Lmiuix/animation/property/ViewProperty;->BACKGROUND:Lmiuix/animation/property/ViewProperty;

    .line 171
    return-void
    .line 173
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$000(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lmiuix/animation/property/ViewProperty;->isInInitLayout(Landroid/view/View;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method private static isInInitLayout(Landroid/view/View;)Z
    .locals 1

    .line 1
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_init_layout:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "ViewProperty{mPropertyName=\'"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    .line 9
    const-string v1, "\'}"

    .line 11
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 16
    return-object p0
    .line 17
.end method
