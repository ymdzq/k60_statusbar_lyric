.class public Lmiuix/animation/controller/FolmeHover;
.super Lmiuix/animation/controller/FolmeBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/animation/IHoverStyle;


# static fields
.field private static final CORNER_DIS:I = 0x24

.field private static final DEFAULT_CORNER:F = 0.5f

.field private static final DEFAULT_SCALE:F = 1.15f

.field private static final SCALE_DIS:I = 0xc

.field private static sHoverRecord:Ljava/util/WeakHashMap;


# instance fields
.field private HoverMoveType:Ljava/lang/String;

.field private isSetAutoTranslation:Z

.field private mChildView:Ljava/lang/ref/WeakReference;

.field private mClearTint:Z

.field private mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

.field private mDefListener:Lmiuix/animation/listener/TransitionListener;

.field private mEnterConfig:Lmiuix/animation/base/AnimConfig;

.field private mExitConfig:Lmiuix/animation/base/AnimConfig;

.field private mExtraTranslationX:F

.field private mHoverView:Ljava/lang/ref/WeakReference;

.field private mIsEnter:Z

.field private mLocation:[I

.field private mMoveConfig:Lmiuix/animation/base/AnimConfig;

.field private mParentView:Ljava/lang/ref/WeakReference;

.field private mRadius:F

.field private mScaleSetMap:Ljava/util/Map;

.field private mSetTint:Z

.field private mTargetHeight:I

.field private mTargetWidth:I

.field private mTranslateDist:F

.field private mTranslationSetMap:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    .line 7
    return-void
    .line 9
.end method

.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 2
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 5
    iput v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslateDist:F

    .line 8
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 10
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 12
    const/4 v1, 0x2

    .line 15
    new-array v2, v1, [F

    .line 16
    fill-array-data v2, :array_0

    .line 18
    const/4 v3, -0x2

    .line 21
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 22
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mMoveConfig:Lmiuix/animation/base/AnimConfig;

    .line 30
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 32
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 34
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    .line 37
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 39
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 41
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mExitConfig:Lmiuix/animation/base/AnimConfig;

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    .line 46
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 48
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    .line 53
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 55
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 58
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 60
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 62
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 65
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mClearTint:Z

    .line 67
    new-array v2, v1, [I

    .line 69
    iput-object v2, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    .line 71
    const/4 v2, 0x0

    .line 73
    iput v2, p0, Lmiuix/animation/controller/FolmeHover;->mRadius:F

    .line 74
    iput v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    .line 76
    iput v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    .line 78
    iput v2, p0, Lmiuix/animation/controller/FolmeHover;->mExtraTranslationX:F

    .line 80
    const-string v2, "MOVE"

    .line 82
    iput-object v2, p0, Lmiuix/animation/controller/FolmeHover;->HoverMoveType:Ljava/lang/String;

    .line 84
    new-instance v2, Lmiuix/animation/controller/FolmeHover$1;

    .line 86
    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeHover$1;-><init>(Lmiuix/animation/controller/FolmeHover;)V

    .line 88
    iput-object v2, p0, Lmiuix/animation/controller/FolmeHover;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    .line 91
    array-length v2, p1

    .line 93
    if-lez v2, :cond_0

    .line 94
    aget-object p1, p1, v0

    .line 96
    goto :goto_0

    .line 98
    :cond_0
    const/4 p1, 0x0

    .line 99
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->initDist(Lmiuix/animation/IAnimTarget;)V

    .line 100
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 103
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->updateHoverState(Lmiuix/animation/IHoverStyle$HoverEffect;)V

    .line 105
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    .line 108
    new-array v0, v1, [F

    .line 110
    fill-array-data v0, :array_1

    .line 112
    invoke-static {v3, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 115
    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 119
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    .line 122
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    .line 124
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 126
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 130
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mExitConfig:Lmiuix/animation/base/AnimConfig;

    .line 133
    new-array p1, v1, [F

    .line 135
    fill-array-data p1, :array_2

    .line 137
    invoke-virtual {p0, v3, p1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 140
    move-result-object p0

    .line 143
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 144
    new-array v0, v1, [F

    .line 146
    fill-array-data v0, :array_3

    .line 148
    const-wide/16 v1, -0x2

    .line 151
    invoke-virtual {p0, p1, v1, v2, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

    .line 153
    return-void

    .line 156
    nop

    .line 157
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 158
    :array_1
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3f19999a    # 0.6f
    .end array-data

    .line 166
    :array_2
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 174
    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data
    .line 182
.end method

.method public static synthetic access$100(Lmiuix/animation/controller/FolmeHover;)F
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/animation/controller/FolmeHover;->mExtraTranslationX:F

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$102(Lmiuix/animation/controller/FolmeHover;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/animation/controller/FolmeHover;->mExtraTranslationX:F

    .line 2
    return p1
    .line 4
.end method

.method public static synthetic access$200(Lmiuix/animation/controller/FolmeHover;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeHover;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 2
    return-void
    .line 5
.end method

.method private actualTranslatDist(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    .line 7
    const/4 v1, 0x0

    .line 9
    aget v0, v0, v1

    .line 10
    int-to-float v0, v0

    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 13
    move-result v2

    .line 16
    add-float/2addr v2, v0

    .line 17
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    .line 18
    const/4 v3, 0x1

    .line 20
    aget v0, v0, v3

    .line 21
    int-to-float v0, v0

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 24
    move-result p2

    .line 27
    add-float/2addr p2, v0

    .line 28
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    .line 29
    aget v0, v0, v1

    .line 31
    int-to-float v0, v0

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 34
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    const/high16 v4, 0x3f000000    # 0.5f

    .line 39
    mul-float/2addr v1, v4

    .line 41
    add-float/2addr v1, v0

    .line 42
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    .line 43
    aget v0, v0, v3

    .line 45
    int-to-float v0, v0

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 48
    move-result v3

    .line 51
    int-to-float v3, v3

    .line 52
    mul-float/2addr v3, v4

    .line 53
    add-float/2addr v3, v0

    .line 54
    sub-float/2addr v2, v1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 56
    move-result v0

    .line 59
    int-to-float v0, v0

    .line 60
    div-float/2addr v2, v0

    .line 61
    sub-float/2addr p2, v3

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 63
    move-result p1

    .line 66
    int-to-float p1, p1

    .line 67
    div-float/2addr p2, p1

    .line 68
    const/high16 p1, 0x3f800000    # 1.0f

    .line 69
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    .line 71
    move-result v0

    .line 74
    const/high16 v1, -0x40800000    # -1.0f

    .line 75
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 77
    move-result v0

    .line 80
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 81
    move-result p2

    .line 84
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    .line 85
    move-result p2

    .line 88
    iget v1, p0, Lmiuix/animation/controller/FolmeHover;->mTranslateDist:F

    .line 89
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 91
    cmpl-float v3, v1, v2

    .line 94
    if-nez v3, :cond_0

    .line 96
    move v3, p1

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    move v3, v1

    .line 100
    :goto_0
    mul-float/2addr v0, v3

    .line 101
    cmpl-float v2, v1, v2

    .line 102
    if-nez v2, :cond_1

    .line 104
    goto :goto_1

    .line 106
    :cond_1
    move p1, v1

    .line 107
    :goto_1
    mul-float/2addr p2, p1

    .line 108
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 109
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->HoverMoveType:Ljava/lang/String;

    .line 111
    invoke-interface {p1, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 113
    move-result-object p1

    .line 116
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 117
    iget v2, p0, Lmiuix/animation/controller/FolmeHover;->mExtraTranslationX:F

    .line 119
    add-float/2addr v0, v2

    .line 121
    float-to-double v2, v0

    .line 122
    invoke-virtual {p1, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 123
    move-result-object p1

    .line 126
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 127
    float-to-double v1, p2

    .line 129
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 130
    move-result-object p1

    .line 133
    iget-object p2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 134
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mMoveConfig:Lmiuix/animation/base/AnimConfig;

    .line 136
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 138
    move-result-object p0

    .line 141
    invoke-interface {p2, p1, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 142
    return-void
    .line 145
.end method

.method private static addMagicPoint(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    const-class v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.view.View"

    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addMagicPoint"

    .line 6
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "addMagicPoint failed , e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static clearMagicPoint(Landroid/view/View;)V
    .locals 4

    :try_start_0
    const-string v0, "android.view.View"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clearMagicPoint"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearMagicPoint failed , e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    .line 8
    invoke-static {p0, v0, v1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private clearRound()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method private clearScale()V
    .locals 3

    .line 1
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 2
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isScaleSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 10
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 12
    move-result-object v1

    .line 15
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 16
    invoke-virtual {v1, v2}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 18
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 21
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 23
    move-result-object v0

    .line 26
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 27
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 29
    :cond_0
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 32
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isScaleSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    .line 34
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 40
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 42
    move-result-object v1

    .line 45
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 46
    invoke-virtual {v1, v2}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 48
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 51
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 53
    move-result-object v0

    .line 56
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 57
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 59
    :cond_1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 62
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 64
    return-void
    .line 67
.end method

.method private clearTranslation()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 3
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 5
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 13
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 15
    move-result-object v1

    .line 18
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 19
    invoke-virtual {v1, v2}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 21
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 24
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 26
    move-result-object v0

    .line 29
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 30
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 32
    :cond_0
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 35
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 43
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 45
    move-result-object v1

    .line 48
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 49
    invoke-virtual {v1, v2}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 51
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 54
    invoke-interface {v1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 56
    move-result-object v0

    .line 59
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 60
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 62
    :cond_1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 65
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 67
    return-void
    .line 70
.end method

.method private varargs doHandleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->handleViewHover(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 2
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setHoverView(Landroid/view/View;)Z

    .line 5
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 11
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    const-string p2, "handleViewHover for "

    .line 19
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    const/4 p1, 0x0

    .line 31
    new-array p1, p1, [Ljava/lang/Object;

    .line 32
    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.method private varargs getEnterConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, [Lmiuix/animation/base/AnimConfig;

    .line 12
    return-object p0
    .line 14
.end method

.method private varargs getExitConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mExitConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, [Lmiuix/animation/base/AnimConfig;

    .line 12
    return-object p0
    .line 14
.end method

.method private static getFeedbackColor(Landroid/view/View;)I
    .locals 4

    :try_start_0
    const-string v0, "android.view.View"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getFeedbackColor"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFeedbackColor failed , e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    .line 8
    invoke-static {p0, v0, v1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static getFeedbackRadius(Landroid/view/View;)F
    .locals 4

    :try_start_0
    const-string v0, "android.view.View"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getFeedbackRadius"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFeedbackRadius failed , e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    .line 8
    invoke-static {p0, v0, v1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private static getPointerShapeType(Landroid/view/View;)I
    .locals 4

    :try_start_0
    const-string v0, "android.view.View"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPointerShapeType"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPointerShapeType failed , e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    .line 8
    invoke-static {p0, v0, v1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private varargs getType([Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle$HoverType;
    .locals 0

    .line 1
    array-length p0, p1

    .line 2
    if-lez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 5
    aget-object p0, p1, p0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 9
    :goto_0
    return-object p0
    .line 11
.end method

.method private varargs handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    const/16 v1, 0x9

    .line 9
    if-eq v0, v1, :cond_1

    .line 11
    const/16 v1, 0xa

    .line 13
    if-eq v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, p2, p3}, Lmiuix/animation/controller/FolmeHover;->onEventExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 18
    instance-of p0, p1, Lmiuix/animation/ViewHoverListener;

    .line 21
    if-eqz p0, :cond_3

    .line 23
    check-cast p1, Lmiuix/animation/ViewHoverListener;

    .line 25
    invoke-interface {p1}, Lmiuix/animation/ViewHoverListener;->onExitHover()V

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    invoke-direct {p0, p2, p3}, Lmiuix/animation/controller/FolmeHover;->onEventEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 31
    instance-of p0, p1, Lmiuix/animation/ViewHoverListener;

    .line 34
    if-eqz p0, :cond_3

    .line 36
    check-cast p1, Lmiuix/animation/ViewHoverListener;

    .line 38
    invoke-interface {p1}, Lmiuix/animation/ViewHoverListener;->onEnterHover()V

    .line 40
    goto :goto_0

    .line 43
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeHover;->onEventMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 44
    instance-of p0, p1, Lmiuix/animation/ViewHoverListener;

    .line 47
    if-eqz p0, :cond_3

    .line 49
    check-cast p1, Lmiuix/animation/ViewHoverListener;

    .line 51
    invoke-interface {p1}, Lmiuix/animation/ViewHoverListener;->onMoveHover()V

    .line 53
    :cond_3
    :goto_0
    return-void
    .line 56
.end method

.method private varargs handleViewHover(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    sget-object v0, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;-><init>(Lmiuix/animation/controller/FolmeHover$1;)V

    .line 15
    sget-object v1, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    .line 18
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 23
    invoke-virtual {v0, p0, p2}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->addHover(Lmiuix/animation/controller/FolmeHover;[Lmiuix/animation/base/AnimConfig;)V

    .line 26
    return-void
    .line 29
.end method

.method private varargs hoverEnterAuto(Z[Lmiuix/animation/base/AnimConfig;)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeHover;->mIsEnter:Z

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 7
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 9
    if-ne v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/View;

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setMagicView(Landroid/view/View;Z)V

    .line 27
    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setWrapped(Landroid/view/View;Z)V

    .line 30
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeHover;->isHideHover()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setMagicView(Z)V

    .line 39
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setPointerHide(Z)V

    .line 42
    :cond_2
    iget p1, p0, Lmiuix/animation/controller/FolmeHover;->mRadius:F

    .line 45
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setCorner(F)Lmiuix/animation/IHoverStyle;

    .line 47
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setTintColor()V

    .line 50
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeHover;->getEnterConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    .line 53
    move-result-object p1

    .line 56
    iget-object p2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 57
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 59
    invoke-interface {p2, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 61
    move-result-object p2

    .line 64
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isScaleSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    .line 65
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 71
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 73
    move-result-object v0

    .line 76
    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 77
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 79
    move-result v1

    .line 82
    sget-object v2, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 83
    invoke-virtual {v0, v2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 85
    move-result v0

    .line 88
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 89
    move-result v0

    .line 92
    const/high16 v1, 0x41400000    # 12.0f

    .line 93
    add-float/2addr v1, v0

    .line 95
    div-float/2addr v1, v0

    .line 96
    const v0, 0x3f933333    # 1.15f

    .line 97
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 100
    move-result v0

    .line 103
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 104
    float-to-double v2, v0

    .line 106
    invoke-virtual {p2, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 107
    move-result-object v0

    .line 110
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 111
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 113
    :cond_3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    .line 116
    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 120
    move-result-object v0

    .line 123
    check-cast v0, Landroid/view/View;

    .line 124
    filled-new-array {v0}, [Landroid/view/View;

    .line 126
    move-result-object v0

    .line 129
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 130
    move-result-object v0

    .line 133
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 134
    move-result-object v0

    .line 137
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 138
    const/high16 v2, 0x3f800000    # 1.0f

    .line 140
    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 142
    move-result-object v0

    .line 145
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 146
    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 148
    move-result-object v0

    .line 151
    invoke-interface {v0, p1}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 152
    :cond_4
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 155
    invoke-interface {p0, p2, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 157
    return-void
    .line 160
.end method

.method private varargs hoverEnterToolType(I[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    if-nez p1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    const/4 v0, 0x2

    .line 14
    if-ne p1, v0, :cond_3

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 17
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->hoverEnterAuto(Z[Lmiuix/animation/base/AnimConfig;)V

    .line 18
    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeHover;->hoverEnter([Lmiuix/animation/base/AnimConfig;)V

    .line 22
    :cond_3
    :goto_1
    return-void
    .line 25
.end method

.method private initDist(Lmiuix/animation/IAnimTarget;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lmiuix/animation/ViewTarget;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    .line 6
    check-cast v0, Lmiuix/animation/ViewTarget;

    .line 7
    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_3

    .line 15
    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 17
    invoke-virtual {p1, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 19
    move-result v1

    .line 22
    sget-object v2, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 23
    invoke-virtual {p1, v2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 25
    move-result p1

    .line 28
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 29
    move-result p1

    .line 32
    const/high16 v1, 0x41400000    # 12.0f

    .line 33
    add-float/2addr v1, p1

    .line 35
    div-float/2addr v1, p1

    .line 36
    const p1, 0x3f933333    # 1.15f

    .line 37
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 40
    move-result p1

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 44
    move-result v1

    .line 47
    iput v1, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 50
    move-result v0

    .line 53
    iput v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    .line 54
    iget v1, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    .line 56
    add-int/lit8 v1, v1, -0x28

    .line 58
    add-int/lit8 v0, v0, -0x28

    .line 60
    int-to-float v1, v1

    .line 62
    const/4 v2, 0x0

    .line 63
    const/high16 v3, 0x43b40000    # 360.0f

    .line 64
    invoke-direct {p0, v1, v2, v3}, Lmiuix/animation/controller/FolmeHover;->perFromVal(FFF)F

    .line 66
    move-result v1

    .line 69
    const/high16 v4, 0x3f800000    # 1.0f

    .line 70
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    .line 72
    move-result v1

    .line 75
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 76
    move-result v1

    .line 79
    const/high16 v5, 0x41700000    # 15.0f

    .line 80
    invoke-direct {p0, v1, v5, v2}, Lmiuix/animation/controller/FolmeHover;->valFromPer(FFF)F

    .line 82
    move-result v1

    .line 85
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    .line 86
    move-result v1

    .line 89
    int-to-float v0, v0

    .line 90
    invoke-direct {p0, v0, v2, v3}, Lmiuix/animation/controller/FolmeHover;->perFromVal(FFF)F

    .line 91
    move-result v0

    .line 94
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    .line 95
    move-result v0

    .line 98
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 99
    move-result v0

    .line 102
    invoke-direct {p0, v0, v5, v2}, Lmiuix/animation/controller/FolmeHover;->valFromPer(FFF)F

    .line 103
    move-result v0

    .line 106
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    .line 107
    move-result v0

    .line 110
    cmpl-float p1, p1, v4

    .line 111
    if-nez p1, :cond_1

    .line 113
    goto :goto_1

    .line 115
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 116
    move-result v2

    .line 119
    :goto_1
    iput v2, p0, Lmiuix/animation/controller/FolmeHover;->mTranslateDist:F

    .line 120
    iget p1, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    .line 122
    iget v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    .line 124
    if-ne p1, v0, :cond_2

    .line 126
    const/16 v1, 0x64

    .line 128
    if-ge p1, v1, :cond_2

    .line 130
    if-ge v0, v1, :cond_2

    .line 132
    int-to-float p1, p1

    .line 134
    const/high16 v0, 0x3f000000    # 0.5f

    .line 135
    mul-float/2addr p1, v0

    .line 137
    float-to-int p1, p1

    .line 138
    int-to-float p1, p1

    .line 139
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setCorner(F)Lmiuix/animation/IHoverStyle;

    .line 140
    goto :goto_2

    .line 143
    :cond_2
    const/high16 p1, 0x42100000    # 36.0f

    .line 144
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setCorner(F)Lmiuix/animation/IHoverStyle;

    .line 146
    :cond_3
    :goto_2
    return-void
    .line 149
.end method

.method private static isMagicView(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.View"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isMagicView"

    new-array v3, v0, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isMagicView failed , e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    .line 8
    invoke-static {p0, v1, v2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method

.method public static isOnHoverView(Landroid/view/View;[ILandroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 5
    move-result v0

    .line 8
    float-to-int v0, v0

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 10
    move-result p2

    .line 13
    float-to-int p2, p2

    .line 14
    if-ltz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    move-result v1

    .line 20
    if-gt v0, v1, :cond_0

    .line 21
    if-ltz p2, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    move-result p0

    .line 28
    if-gt p2, p0, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :cond_1
    :goto_0
    return p1
    .line 33
.end method

.method private isScaleSet(Lmiuix/animation/IHoverStyle$HoverType;)Z
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method private isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method private static isWrapped(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.View"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isWrapped"

    new-array v3, v0, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " isWrapped failed , e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    .line 8
    invoke-static {p0, v1, v2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method

.method private varargs onEventEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    const-string v1, "onEventEnter, touchEnter"

    .line 11
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->hoverEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 16
    return-void
    .line 19
.end method

.method private varargs onEventExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mIsEnter:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    const-string v1, "onEventExit, touchExit"

    .line 15
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->hoverExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 20
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->resetTouchStatus()V

    .line 23
    :cond_1
    return-void
    .line 26
.end method

.method private varargs onEventMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    iget-boolean p3, p0, Lmiuix/animation/controller/FolmeHover;->mIsEnter:Z

    .line 2
    if-eqz p3, :cond_0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    sget-object p3, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 8
    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeHover;->isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    .line 10
    move-result p3

    .line 13
    if-eqz p3, :cond_0

    .line 14
    iget-boolean p3, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 16
    if-eqz p3, :cond_0

    .line 18
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->actualTranslatDist(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method private perFromVal(FFF)F
    .locals 0

    .line 1
    sub-float/2addr p1, p2

    .line 2
    sub-float/2addr p3, p2

    .line 3
    div-float/2addr p1, p3

    .line 4
    return p1
    .line 5
.end method

.method private resetTouchStatus()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mIsEnter:Z

    .line 3
    return-void
    .line 5
.end method

.method private resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroid/view/View;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 11
    :cond_0
    return-object p0
    .line 14
.end method

.method private setAutoRound()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method private setAutoScale()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 2
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 11
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 18
    invoke-interface {p0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 20
    move-result-object p0

    .line 23
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 24
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 26
    invoke-virtual {p0, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 28
    move-result-object p0

    .line 31
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 32
    invoke-virtual {p0, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 34
    return-void
    .line 37
.end method

.method private setAutoTranslation()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 5
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 14
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 21
    invoke-interface {p0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 23
    move-result-object p0

    .line 26
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 27
    const-wide/16 v1, 0x0

    .line 29
    invoke-virtual {p0, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 31
    move-result-object p0

    .line 34
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 35
    invoke-virtual {p0, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 37
    return-void
    .line 40
.end method

.method private static setFeedbackColor(Landroid/view/View;I)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setFeedbackColor"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setFeedbackColor failed , e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static setFeedbackRadius(Landroid/view/View;F)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setFeedbackRadius"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setFeedbackRadius failed , e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static setHotXOffset(Landroid/view/View;I)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setHotXOffset"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setHotXOffset failed , e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static setHotYOffset(Landroid/view/View;I)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setHotYOffset"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setHotYOffset failed , e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setHoverView(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ne v0, p1, :cond_1

    .line 14
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 20
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    .line 23
    const/4 p0, 0x1

    .line 25
    return p0
    .line 26
.end method

.method private static setMagicView(Landroid/view/View;Z)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setMagicView"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setMagicView failed , e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static setPointerHide(Landroid/view/View;Z)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setPointerHide"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setPointerHide failed , e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static setPointerShape(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    const-class v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.view.View"

    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setPointerShape"

    .line 6
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setPointerShape failed , e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static setPointerShapeType(Landroid/view/View;I)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setPointerShapeType"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setPointerShapeType failed , e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setTintColor()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mSetTint:Z

    .line 2
    if-nez v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mClearTint:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0xf

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 18
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    instance-of v2, v1, Landroid/view/View;

    .line 28
    if-eqz v2, :cond_1

    .line 30
    check-cast v1, Landroid/view/View;

    .line 32
    const v0, 0x7f06068c    # @color/miuix_folme_color_hover_tint '@color/miuix_folme_color_hover_tint_light'

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 41
    move-result v0

    .line 44
    :cond_1
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 45
    iget-object v2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 47
    sget-object v3, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 49
    invoke-interface {v2, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 51
    move-result-object v2

    .line 54
    int-to-double v3, v0

    .line 55
    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 56
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 59
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 61
    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 63
    move-result-object p0

    .line 66
    const-wide/16 v2, 0x0

    .line 67
    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 69
    :cond_2
    :goto_0
    return-void
    .line 72
.end method

.method private static setWrapped(Landroid/view/View;Z)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setWrapped"

    .line 6
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setWrapped failed , e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 9
    invoke-static {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateHoverState(Lmiuix/animation/IHoverStyle$HoverEffect;)V
    .locals 2

    .line 1
    sget-object v0, Lmiuix/animation/controller/FolmeHover$2;->$SwitchMap$miuix$animation$IHoverStyle$HoverEffect:[I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_5

    .line 11
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    goto :goto_1

    .line 19
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 20
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 22
    if-eq v0, v1, :cond_1

    .line 24
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 26
    if-ne v0, v1, :cond_2

    .line 28
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeHover;->clearTintColor()Lmiuix/animation/IHoverStyle;

    .line 30
    :cond_2
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoScale()V

    .line 33
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoTranslation()V

    .line 36
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoRound()V

    .line 39
    iput-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 42
    goto :goto_1

    .line 44
    :cond_3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 45
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 47
    if-ne v0, v1, :cond_4

    .line 49
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearRound()V

    .line 51
    :cond_4
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setTintColor()V

    .line 54
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoScale()V

    .line 57
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoTranslation()V

    .line 60
    iput-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 63
    goto :goto_1

    .line 65
    :cond_5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 66
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 68
    if-ne v0, v1, :cond_6

    .line 70
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearScale()V

    .line 72
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearTranslation()V

    .line 75
    goto :goto_0

    .line 78
    :cond_6
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 79
    if-ne v0, v1, :cond_7

    .line 81
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearScale()V

    .line 83
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearTranslation()V

    .line 86
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearRound()V

    .line 89
    :cond_7
    :goto_0
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setTintColor()V

    .line 92
    iput-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 95
    :goto_1
    return-void
    .line 97
.end method

.method private valFromPer(FFF)F
    .locals 0

    .line 1
    invoke-static {p3, p2, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method


# virtual methods
.method public addMagicPoint(Landroid/graphics/Point;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->addMagicPoint(Landroid/view/View;Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public clean()V
    .locals 2

    .line 1
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    .line 2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    .line 10
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 15
    iput-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    .line 18
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mChildView:Ljava/lang/ref/WeakReference;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 24
    iput-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mChildView:Ljava/lang/ref/WeakReference;

    .line 27
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    .line 29
    if-eqz v0, :cond_2

    .line 31
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 33
    iput-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    .line 36
    :cond_2
    return-void
    .line 38
.end method

.method public clearMagicPoint()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeHover;->clearMagicPoint(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public clearTintColor()Lmiuix/animation/IHoverStyle;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mClearTint:Z

    .line 3
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 5
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 7
    sget-object v2, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 9
    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 15
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 18
    sget-object v2, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 20
    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 26
    return-object p0
    .line 29
.end method

.method public getFeedbackColor()I
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeHover;->getFeedbackColor(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getFeedbackRadius()F
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeHover;->getFeedbackRadius(Landroid/view/View;)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getPointerShapeType()I
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeHover;->getPointerShapeType(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public varargs handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->doHandleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 2
    return-void
    .line 5
.end method

.method public varargs hoverEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->hoverEnterToolType(I[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs hoverEnter([Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeHover;->hoverEnterAuto(Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs hoverExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    invoke-static {v0, v1, p1}, Lmiuix/animation/controller/FolmeHover;->isOnHoverView(Landroid/view/View;[ILandroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->hoverEnter([Lmiuix/animation/base/AnimConfig;)V

    .line 3
    :cond_0
    sget-object p1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget v1, p0, Lmiuix/animation/controller/FolmeHover;->mExtraTranslationX:F

    float-to-double v1, v1

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeHover;->hoverExit([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs hoverExit([Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->getExitConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 9
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public varargs hoverMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeHover;->onEventMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 2
    return-void
    .line 5
.end method

.method public ignoreHoverOf(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->removeHover(Lmiuix/animation/controller/FolmeHover;)Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    sget-object p0, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public isHideHover()Z
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    .line 2
    const/16 v1, 0x64

    .line 4
    if-ge v0, v1, :cond_1

    .line 6
    iget v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    .line 8
    if-ge v0, v1, :cond_1

    .line 10
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 18
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 20
    if-eq p0, v0, :cond_0

    .line 22
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 24
    if-ne p0, v0, :cond_1

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
    .line 31
.end method

.method public isMagicView()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeHover;->isMagicView(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWrapped()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeHover;->isWrapped(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 3
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1, p1, v0}, Lmiuix/animation/controller/FolmeHover;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 6
    return-void
    .line 9
.end method

.method public varargs onMotionEventEx(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeHover;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 2
    return-void
    .line 5
.end method

.method public varargs setAlpha(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeHover;->getType([Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle$HoverType;

    .line 4
    move-result-object p2

    .line 7
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 8
    move-result-object p2

    .line 11
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 12
    float-to-double v1, p1

    .line 14
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 15
    return-object p0
    .line 18
.end method

.method public setBackgroundColor(FFFF)Lmiuix/animation/IHoverStyle;
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setBackgroundColor(I)Lmiuix/animation/IHoverStyle;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundColor(I)Lmiuix/animation/IHoverStyle;
    .locals 4

    .line 2
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 3
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    int-to-double v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 4
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {p1, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 5
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v1, v1

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setCorner(F)Lmiuix/animation/IHoverStyle;
    .locals 2

    .line 1
    iput p1, p0, Lmiuix/animation/controller/FolmeHover;->mRadius:F

    .line 2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 4
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    instance-of v1, v0, Landroid/view/View;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    check-cast v0, Landroid/view/View;

    .line 18
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    .line 20
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 26
    :cond_0
    return-object p0
    .line 29
.end method

.method public setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->updateHoverState(Lmiuix/animation/IHoverStyle$HoverEffect;)V

    .line 2
    return-object p0
    .line 5
.end method

.method public setFeedbackColor(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setFeedbackColor(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setFeedbackRadius(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setFeedbackRadius(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public setHotXOffset(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setHotXOffset(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setHotYOffset(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setHotYOffset(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setHoverEnter()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setTintColor()V

    .line 2
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 5
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 7
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 9
    return-void
    .line 12
.end method

.method public setHoverExit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 4
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 6
    return-void
    .line 9
.end method

.method public setMagicView(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setMagicView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setParentView(Landroid/view/View;)Lmiuix/animation/IHoverStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ne p1, v0, :cond_1

    .line 14
    return-object p0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 17
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    .line 22
    return-object p0
    .line 24
.end method

.method public setPointerHide(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setPointerHide(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setPointerShape(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setPointerShape(Landroid/view/View;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setPointerShapeType(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setPointerShapeType(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public varargs setScale(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeHover;->getType([Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle$HoverType;

    .line 2
    move-result-object p2

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 13
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 15
    move-result-object p2

    .line 18
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 19
    float-to-double v1, p1

    .line 21
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 22
    move-result-object p1

    .line 25
    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 26
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 28
    return-object p0
    .line 31
.end method

.method public setTint(FFFF)Lmiuix/animation/IHoverStyle;
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 4
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setTint(I)Lmiuix/animation/IHoverStyle;

    move-result-object p0

    return-object p0
.end method

.method public setTint(I)Lmiuix/animation/IHoverStyle;
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mSetTint:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mClearTint:Z

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setTintMode(I)Lmiuix/animation/IHoverStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mExitConfig:Lmiuix/animation/base/AnimConfig;

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 9
    return-object p0
    .line 12
.end method

.method public varargs setTranslate(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 3
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeHover;->getType([Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle$HoverType;

    .line 5
    move-result-object p2

    .line 8
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 16
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 18
    move-result-object p2

    .line 21
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 22
    float-to-double v1, p1

    .line 24
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 25
    move-result-object p1

    .line 28
    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 29
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 31
    return-object p0
    .line 34
.end method

.method public setWrapped(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setWrapped(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
