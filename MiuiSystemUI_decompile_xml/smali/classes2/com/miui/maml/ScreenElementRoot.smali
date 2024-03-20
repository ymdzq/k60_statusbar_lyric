.class public Lcom/miui/maml/ScreenElementRoot;
.super Lcom/miui/maml/elements/ScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/InteractiveListener;


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field public static final CAPABILITY_ALL:I = -0x1

.field public static final CAPABILITY_CREATE_OBJ:I = 0x4

.field public static final CAPABILITY_VAR_PERSISTENCE:I = 0x2

.field public static final CAPABILITY_WEBSERVICE:I = 0x1

.field private static final DARK_MODE_COLOR:I = 0x19000000

.field private static final DEFAULT_RES_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final EXTERNAL_COMMANDS_TAG_NAME:Ljava/lang/String; = "ExternalCommands"

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final MAML_INTERNAL_VERSION:I = 0x6

.field private static final MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final RAW_DENSITY:Ljava/lang/String; = "__raw_density"

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"

.field private static final SCALE_FACTOR:Ljava/lang/String; = "__scale_factor"

.field private static final THEMEMANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.android.thememanager"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"

.field private static final VAR_MAML_VERSION:Ljava/lang/String; = "__maml_version"


# instance fields
.field protected DEFAULT_FRAME_RATE:F

.field private mAccessibleElements:Ljava/util/List;

.field private mAllowScreenRotation:Z

.field private mAnimationItems:Landroid/util/ArrayMap;

.field private mAutoDarkenWallpaper:Z

.field private mBlurWindow:Z

.field private mCacheDir:Ljava/lang/String;

.field private mCapability:I

.field private mCheckPoint:J

.field private mClearCanvas:Z

.field private mConfig:Lcom/miui/maml/util/ConfigFile;

.field private mConfigPath:Ljava/lang/String;

.field protected final mContext:Lcom/miui/maml/ScreenContext;

.field protected mController:Lcom/miui/maml/RendererController;

.field private mDarkWallpaperMode:Z

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field private mDisableCutRoundCorner:Z

.field private mElements:Landroid/util/ArrayMap;

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;

.field private mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

.field private mFinished:Z

.field private mFontScale:F

.field protected mFrameRate:F

.field private mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

.field private mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

.field private mFrames:I

.field private mHeight:F

.field private mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

.field private mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

.field private mHoverMatrix:Landroid/graphics/Matrix;

.field protected mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

.field private mKeepResource:Z

.field private mLoaded:Z

.field private mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

.field private mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;

.field private mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

.field private mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lcom/miui/maml/data/IndexedVariable;

.field private mNeedReset:Z

.field private mPreTickers:Ljava/util/ArrayList;

.field protected mRawAttrs:Ljava/util/HashMap;

.field private mRawDefaultResourceDensity:I

.field private mRawHeight:I

.field private mRawTargetDensity:I

.field private mRawWidth:I

.field private final mRenderMutex:Ljava/lang/Object;

.field private mRendererControllers:Ljava/util/ArrayList;

.field private mRootTag:Ljava/lang/String;

.field private mSaveConfigOnlyInPause:Z

.field private mSaveConfigViaProvider:Z

.field private mScale:F

.field private mScaleByDensity:Z

.field private mSelfRender:Z

.field public mShowDebugLayout:Z

.field private mShowFramerate:Z

.field private mSoundManager:Lcom/miui/maml/SoundManager;

.field private mStylesManager:Lcom/miui/maml/StylesManager;

.field private mSupportAccessibilityService:Z

.field private mSystemExternCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mTargetDensity:I

.field protected mTargetScreenHeight:I

.field protected mTargetScreenWidth:I

.field private mTouchBeginTime:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchBeginX:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchBeginY:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchX:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchY:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchable:Z

.field private mTransparentSurface:Z

.field private mUseCustomizedDarkModeWallpaper:Z

.field private mUseHardwareCanvas:Z

.field protected mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

.field private mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

.field private mVersion:I

.field private mViewManagerRef:Ljava/lang/ref/WeakReference;

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenContext;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 3
    const/high16 v0, 0x41f00000    # 30.0f

    .line 6
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 22
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    .line 25
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mBlurWindow:Z

    .line 27
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    .line 30
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDisableCutRoundCorner:Z

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    .line 34
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    .line 41
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    .line 48
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    .line 53
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    .line 55
    invoke-direct {v0}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 67
    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/lang/Object;

    .line 79
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRenderMutex:Ljava/lang/Object;

    .line 84
    iput-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 86
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 88
    new-instance v0, Lcom/miui/maml/data/VariableUpdaterManager;

    .line 90
    invoke-direct {v0, p0}, Lcom/miui/maml/data/VariableUpdaterManager;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 92
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 95
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 97
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 99
    move-result-object v2

    .line 102
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 103
    const-string/jumbo v3, "touch_x"

    .line 105
    invoke-direct {v0, v3, v2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 108
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchX:Lcom/miui/maml/data/IndexedVariable;

    .line 111
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 113
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 115
    move-result-object v2

    .line 118
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 119
    const-string/jumbo v3, "touch_y"

    .line 121
    invoke-direct {v0, v3, v2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 124
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchY:Lcom/miui/maml/data/IndexedVariable;

    .line 127
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 129
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 131
    move-result-object v2

    .line 134
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 135
    const-string/jumbo v3, "touch_begin_x"

    .line 137
    invoke-direct {v0, v3, v2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 140
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginX:Lcom/miui/maml/data/IndexedVariable;

    .line 143
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 145
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 147
    move-result-object v2

    .line 150
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 151
    const-string/jumbo v3, "touch_begin_y"

    .line 153
    invoke-direct {v0, v3, v2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 156
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginY:Lcom/miui/maml/data/IndexedVariable;

    .line 159
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 161
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 163
    move-result-object v2

    .line 166
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 167
    const-string/jumbo v3, "touch_begin_time"

    .line 169
    invoke-direct {v0, v3, v2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 172
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginTime:Lcom/miui/maml/data/IndexedVariable;

    .line 175
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 177
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 179
    move-result-object v2

    .line 182
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 183
    const-string v3, "intercept_sys_touch"

    .line 185
    invoke-direct {v0, v3, v2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 187
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lcom/miui/maml/data/IndexedVariable;

    .line 190
    new-instance v0, Lcom/miui/maml/SoundManager;

    .line 192
    invoke-direct {v0, p1}, Lcom/miui/maml/SoundManager;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 194
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    .line 197
    new-instance p1, Lcom/miui/maml/SystemCommandListener;

    .line 199
    invoke-direct {p1, p0}, Lcom/miui/maml/SystemCommandListener;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 201
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 204
    return-void
    .line 206
.end method

.method public static synthetic access$000(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/CommandTriggers;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/ScreenElementRoot;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/miui/maml/util/ConfigFile;

    invoke-direct {v0}, Lcom/miui/maml/util/ConfigFile;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    .line 3
    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigViaProvider:Z

    invoke-virtual {v0, v1}, Lcom/miui/maml/util/ConfigFile;->setSaveViaProvider(Z)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {p1}, Lcom/miui/maml/ResourceManager;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->loadDefaultSettings(Lorg/w3c/dom/Element;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {p1}, Lcom/miui/maml/util/ConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/ConfigFile$Variable;

    .line 8
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string/jumbo v2, "string"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v2, "number"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    :try_start_0
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 12
    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v3, v3, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-static {v0, v3, v1, v2}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {p1}, Lcom/miui/maml/util/ConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/Task;

    .line 14
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    const-string v4, ".name"

    .line 15
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    iget-object v3, v0, Lcom/miui/maml/util/Task;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    const-string v4, ".package"

    .line 18
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    iget-object v3, v0, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    const-string v4, ".class"

    .line 21
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    iget-object v0, v0, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private loadRawAttrs(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 7
    move-result v1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 13
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 17
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 22
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    return-void
    .line 33
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "useVariableUpdater"

    .line 2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onAddVariableUpdater(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 21
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    .line 23
    :goto_0
    new-instance p1, Lcom/miui/maml/data/DarkModeVariableUpdater;

    .line 26
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 28
    invoke-direct {p1, v0}, Lcom/miui/maml/data/DarkModeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 30
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 33
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    .line 35
    return-void
    .line 38
.end method

.method private setupScale(Lorg/w3c/dom/Element;)V
    .locals 8

    .line 1
    const-string v0, "scaleByDensity"

    .line 2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 17
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 18
    :cond_0
    const-string v0, "defaultScreenWidth"

    .line 20
    const/4 v1, 0x0

    .line 22
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 23
    move-result v0

    .line 26
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 27
    if-nez v0, :cond_1

    .line 29
    const-string v0, "screenWidth"

    .line 31
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 33
    move-result v0

    .line 36
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 37
    :cond_1
    const-string v0, "defaultResourceDensity"

    .line 39
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 41
    move-result v0

    .line 44
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 45
    if-nez v0, :cond_2

    .line 47
    const-string v0, "resDensity"

    .line 49
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 51
    move-result v0

    .line 54
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 55
    :cond_2
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 57
    invoke-static {v0}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    .line 59
    move-result v0

    .line 62
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 63
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 65
    const/16 v3, 0x1e0

    .line 67
    const/16 v4, 0xf0

    .line 69
    if-nez v2, :cond_3

    .line 71
    if-nez v0, :cond_3

    .line 73
    iput v3, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 75
    iput v4, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    if-nez v0, :cond_4

    .line 80
    mul-int/2addr v2, v4

    .line 82
    div-int/2addr v2, v3

    .line 83
    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 84
    goto :goto_0

    .line 86
    :cond_4
    if-nez v2, :cond_5

    .line 87
    mul-int/2addr v0, v3

    .line 89
    div-int/2addr v0, v4

    .line 90
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 91
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 93
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 95
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 97
    invoke-virtual {v0, v2}, Lcom/miui/maml/ResourceManager;->setDefaultResourceDensity(I)V

    .line 99
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 102
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 104
    const-string/jumbo v2, "window"

    .line 106
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    move-result-object v0

    .line 112
    check-cast v0, Landroid/view/WindowManager;

    .line 113
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 115
    move-result-object v0

    .line 118
    new-instance v2, Landroid/graphics/Point;

    .line 119
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 121
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 124
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 127
    move-result v5

    .line 130
    const/4 v6, 0x1

    .line 131
    if-eq v5, v6, :cond_7

    .line 132
    const/4 v7, 0x3

    .line 134
    if-ne v5, v7, :cond_6

    .line 135
    goto :goto_1

    .line 137
    :cond_6
    move v6, v1

    .line 138
    :cond_7
    :goto_1
    if-eqz v6, :cond_8

    .line 139
    iget v5, v2, Landroid/graphics/Point;->y:I

    .line 141
    goto :goto_2

    .line 143
    :cond_8
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 144
    :goto_2
    iput v5, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 146
    if-eqz v6, :cond_9

    .line 148
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 150
    goto :goto_3

    .line 152
    :cond_9
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 153
    :goto_3
    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 155
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 157
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 159
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 162
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 165
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 167
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 169
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 173
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 177
    move-result-object v0

    .line 180
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 181
    and-int/lit8 v0, v0, 0xf

    .line 183
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 185
    if-nez v2, :cond_a

    .line 187
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 189
    mul-int/2addr v2, v4

    .line 191
    div-int/2addr v2, v3

    .line 192
    :cond_a
    new-instance v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource;

    .line 193
    invoke-direct {v3, p1, v2}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;-><init>(Lorg/w3c/dom/Element;I)V

    .line 195
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 198
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 200
    invoke-virtual {v3, v2, v4, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findResource(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    .line 202
    move-result-object v2

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    .line 206
    const-string v5, "findResource: "

    .line 208
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->toString()Ljava/lang/String;

    .line 213
    move-result-object v5

    .line 216
    const-string v6, "ScreenElementRoot"

    .line 217
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget v4, v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 222
    invoke-static {v4}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    .line 224
    move-result v4

    .line 227
    int-to-float v4, v4

    .line 228
    iget v5, v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 229
    div-float/2addr v4, v5

    .line 231
    float-to-int v4, v4

    .line 232
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 233
    iget-object v5, v5, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 235
    iget-object v2, v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 237
    invoke-virtual {v5, v2, v4}, Lcom/miui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    .line 239
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 242
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 244
    invoke-virtual {v3, v2, v4, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findScale(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 246
    move-result-object v0

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    .line 250
    const-string v3, "findScale: "

    .line 252
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->toString()Ljava/lang/String;

    .line 257
    move-result-object v3

    .line 260
    invoke-static {v2, v3, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 264
    const/high16 v3, 0x3f800000    # 1.0f

    .line 266
    const/4 v4, 0x0

    .line 268
    if-eqz v2, :cond_c

    .line 269
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 271
    invoke-static {v2}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    .line 273
    move-result v2

    .line 276
    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 277
    iget v5, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 279
    cmpg-float v4, v5, v4

    .line 281
    if-gtz v4, :cond_b

    .line 283
    int-to-float v0, v2

    .line 285
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 286
    int-to-float v2, v2

    .line 288
    div-float/2addr v0, v2

    .line 289
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 290
    goto :goto_4

    .line 292
    :cond_b
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 293
    int-to-float v2, v2

    .line 295
    mul-float/2addr v2, v3

    .line 296
    iget v0, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 297
    int-to-float v0, v0

    .line 299
    div-float/2addr v2, v0

    .line 300
    mul-float/2addr v2, v5

    .line 301
    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 302
    goto :goto_4

    .line 304
    :cond_c
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 305
    int-to-float v5, v2

    .line 307
    iget v7, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 308
    int-to-float v7, v7

    .line 310
    div-float/2addr v5, v7

    .line 311
    iput v5, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 312
    iget v7, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 314
    int-to-float v7, v7

    .line 316
    mul-float/2addr v7, v5

    .line 317
    float-to-int v5, v7

    .line 318
    iput v5, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 319
    iget v5, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 321
    cmpl-float v4, v5, v4

    .line 323
    if-lez v4, :cond_d

    .line 325
    int-to-float v2, v2

    .line 327
    mul-float/2addr v2, v3

    .line 328
    iget v0, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 329
    int-to-float v0, v0

    .line 331
    div-float/2addr v2, v0

    .line 332
    mul-float/2addr v2, v5

    .line 333
    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 334
    :cond_d
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 336
    const-string/jumbo v2, "set scale: "

    .line 338
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    move-result-object v0

    .line 352
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 356
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 358
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 360
    invoke-virtual {v0, v2}, Lcom/miui/maml/ResourceManager;->setTargetDensity(I)V

    .line 362
    const-string/jumbo v0, "width"

    .line 365
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 368
    move-result v0

    .line 371
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawWidth:I

    .line 372
    const-string v0, "height"

    .line 374
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 376
    move-result p1

    .line 379
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawHeight:I

    .line 380
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawWidth:I

    .line 382
    int-to-float p1, p1

    .line 384
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 385
    mul-float/2addr p1, v0

    .line 387
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 388
    move-result p1

    .line 391
    int-to-float p1, p1

    .line 392
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mWidth:F

    .line 393
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawHeight:I

    .line 395
    int-to-float p1, p1

    .line 397
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 398
    mul-float/2addr p1, v0

    .line 400
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 401
    move-result p1

    .line 404
    int-to-float p1, p1

    .line 405
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHeight:F

    .line 406
    return-void
    .line 408
.end method

.method private traverseElements()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$2;

    .line 7
    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot$2;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 5
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 7
    return-void
    .line 10
.end method

.method public addAccessibleElements(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    .line 8
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
    .line 16
.end method

.method public addAccessibleList(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 21
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 25
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    return-void
    .line 33
.end method

.method public addAnimationItem(Ljava/lang/String;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    .line 30
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :goto_0
    return-void
    .line 35
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-void
    .line 7
.end method

.method public addPreTicker(Lcom/miui/maml/elements/ITicker;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public allowScreenRotation()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    .line 2
    return p0
    .line 4
.end method

.method public attachToVsync()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    .line 15
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 24
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 25
    invoke-virtual {v2, v3}, Lcom/miui/maml/RenderVsyncUpdater;->addRendererController(Lcom/miui/maml/RendererController;)V

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 34
    const-string v0, "VsyncUpdater or controller is null, MUST load before attaching"

    .line 36
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0
    .line 41
.end method

.method public createFramerateToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public detachFromVsync()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    .line 15
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 24
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 25
    invoke-virtual {v2, v3}, Lcom/miui/maml/RenderVsyncUpdater;->removeRendererController(Lcom/miui/maml/RendererController;)V

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 34
    const-string v0, "VsyncUpdater or controller is null, MUST load before detaching"

    .line 36
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0
    .line 41
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 2
    if-nez v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mClearCanvas:Z

    .line 11
    if-eqz v0, :cond_1

    .line 13
    const/4 v0, 0x0

    .line 15
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 21
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->render(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 28
    const-string v1, "ScreenElementRoot"

    .line 31
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :goto_0
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mShowFramerate:Z

    .line 45
    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    .line 49
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->draw(Landroid/graphics/Canvas;)V

    .line 51
    :cond_2
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 56
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    .line 58
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 60
    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 62
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDarkWallpaperMode:Z

    .line 65
    if-eqz v0, :cond_3

    .line 67
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mUseCustomizedDarkModeWallpaper:Z

    .line 69
    if-nez v0, :cond_3

    .line 71
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAutoDarkenWallpaper:Z

    .line 73
    if-eqz p0, :cond_3

    .line 75
    const/high16 p0, 0x19000000

    .line 77
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 79
    :cond_3
    :goto_1
    return-void
    .line 82
.end method

.method public doTick(J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 2
    if-nez v0, :cond_6

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto/16 :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->tick()V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/VariableUpdaterManager;->tick(J)V

    .line 21
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    move v2, v1

    .line 31
    :goto_0
    if-ge v2, v0, :cond_2

    .line 32
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 39
    check-cast v3, Lcom/miui/maml/elements/ITicker;

    .line 40
    invoke-interface {v3, p1, p2}, Lcom/miui/maml/elements/ITicker;->tick(J)V

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->tick(J)V

    .line 50
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lcom/miui/maml/data/IndexedVariable;

    .line 53
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 55
    move-result-wide v2

    .line 58
    const-wide/16 v4, 0x0

    .line 59
    cmpl-double v0, v2, v4

    .line 61
    const/4 v2, 0x1

    .line 63
    if-lez v0, :cond_3

    .line 64
    move v0, v2

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v0, v1

    .line 68
    :goto_1
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 69
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 71
    const-wide/16 v3, 0x0

    .line 73
    if-nez v0, :cond_4

    .line 75
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 77
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 79
    iget-object v5, v5, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 81
    const-string v6, "frame_rate"

    .line 83
    invoke-direct {v0, v6, v5, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 85
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 88
    iput-wide v3, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 90
    :cond_4
    iget-wide v5, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 92
    cmp-long v0, v5, v3

    .line 94
    if-nez v0, :cond_5

    .line 96
    iput-wide p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 98
    goto :goto_2

    .line 100
    :cond_5
    sub-long v2, p1, v5

    .line 101
    const-wide/16 v4, 0x3e8

    .line 103
    cmp-long v0, v2, v4

    .line 105
    if-ltz v0, :cond_6

    .line 107
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    .line 109
    mul-int/lit16 v0, v0, 0x3e8

    .line 111
    int-to-long v4, v0

    .line 113
    div-long/2addr v4, v2

    .line 114
    long-to-int v0, v4

    .line 115
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    .line 116
    invoke-virtual {v2, v0}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->set(I)V

    .line 118
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 121
    int-to-double v3, v0

    .line 123
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 124
    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    .line 127
    iput-wide p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 129
    :cond_6
    :goto_2
    return-void
    .line 131
.end method

.method public doneRender()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 4
    return-void
    .line 7
.end method

.method public findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 1

    .line 1
    const-string v0, "__root"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->getElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method

.method public findTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->getTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public finish()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 2
    if-nez v0, :cond_5

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    .line 11
    const-string v0, "ScreenElementRoot"

    .line 14
    const-string v1, "finish"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 21
    const-string v2, "preFinish"

    .line 23
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 30
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 33
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    .line 38
    if-eqz v0, :cond_1

    .line 40
    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigOnlyInPause:Z

    .line 42
    if-nez v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 46
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/miui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 57
    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->finish()V

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 64
    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->finish()V

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 71
    if-eqz v0, :cond_4

    .line 73
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->finish()V

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    .line 78
    invoke-virtual {v0}, Lcom/miui/maml/SoundManager;->release()V

    .line 80
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 83
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 85
    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 87
    invoke-virtual {v0, v1}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    .line 89
    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 93
    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 96
    invoke-static {}, Lcom/miui/maml/data/Expression$FunctionExpression;->resetFunctions()V

    .line 98
    :cond_5
    :goto_0
    return-void
    .line 101
.end method

.method public getAccessibleElements()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 2
    return-object p0
    .line 4
.end method

.method public getAnimationItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    return-object p0
    .line 10
.end method

.method public getCacheDir()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getCapability(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 2
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public getContext()Lcom/miui/maml/ScreenContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 2
    return-object p0
    .line 4
.end method

.method public getContextAndRect()Landroid/util/Pair;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/miui/maml/util/MamlViewManager;

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v0

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    invoke-interface {p0}, Lcom/miui/maml/util/MamlViewManager;->getViewLocationOnScreen()Landroid/graphics/Rect;

    .line 17
    move-result-object v0

    .line 20
    invoke-interface {p0}, Lcom/miui/maml/util/MamlViewManager;->getViewContext()Landroid/content/Context;

    .line 21
    move-result-object p0

    .line 24
    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 25
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    return-object v0
    .line 30
.end method

.method public getDefaultScreenWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public getElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Lcom/miui/maml/elements/ScreenElement;

    .line 16
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
    .line 20
.end method

.method public final getFontScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mFontScale:F

    .line 2
    return p0
    .line 4
.end method

.method public getHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mHeight:F

    .line 2
    return p0
    .line 4
.end method

.method public getHoverElement()Lcom/miui/maml/elements/AnimatedScreenElement;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMamlSurface()Lcom/miui/maml/component/MamlSurface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/miui/maml/component/MamlSurface;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
    .line 14
.end method

.method public getRawAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    return-object p0
    .line 10
.end method

.method public getRenderMutex()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRenderMutex:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public getRendererController()Lcom/miui/maml/RendererController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 2
    return-object p0
    .line 4
.end method

.method public getResourceDensity()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 2
    return p0
    .line 4
.end method

.method public getRootTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getScale()F
    .locals 1

    .line 1
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 2
    const/4 v0, 0x0

    .line 4
    cmpl-float v0, p0, v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "ScreenElementRoot"

    .line 9
    const-string v0, "scale not initialized!"

    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    const/high16 p0, 0x3f800000    # 1.0f

    .line 16
    :cond_0
    return p0
    .line 18
.end method

.method public getScreenHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getScreenWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mStylesManager:Lcom/miui/maml/StylesManager;

    .line 10
    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Lcom/miui/maml/StylesManager;->getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;

    .line 14
    move-result-object v1

    .line 17
    :cond_1
    return-object v1
    .line 18
.end method

.method public getSystemFrameRate()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 2
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 4
    const-string/jumbo v0, "window"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/WindowManager;

    .line 13
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    .line 19
    move-result p0

    .line 22
    return p0
    .line 23
.end method

.method public getTargetDensity()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 2
    return p0
    .line 4
.end method

.method public getViewManager()Lcom/miui/maml/util/MamlViewManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/miui/maml/util/MamlViewManager;

    .line 10
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
    .line 14
.end method

.method public getWidth()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mWidth:F

    .line 2
    return p0
    .line 4
.end method

.method public haptic(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public init()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 7
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 9
    const-string v1, "__objRoot"

    .line 11
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    const-string v1, "__objContext"

    .line 16
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 23
    const-string v1, "ScreenElementRoot"

    .line 26
    const-string v2, "init"

    .line 28
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 33
    invoke-virtual {p0, v3}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 35
    const/4 v3, -0x1

    .line 38
    iput v3, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 39
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->isShowDebugLayout()Z

    .line 41
    move-result v3

    .line 44
    iput-boolean v3, p0, Lcom/miui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 45
    const/4 v3, 0x0

    .line 47
    iput-boolean v3, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 48
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 50
    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 52
    invoke-virtual {v4}, Lcom/miui/maml/ResourceManager;->init()V

    .line 54
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 57
    move-result-object v4

    .line 60
    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 67
    move-result-object v4

    .line 70
    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 71
    iput v4, p0, Lcom/miui/maml/ScreenElementRoot;->mFontScale:F

    .line 73
    const-string v5, "__fontScale"

    .line 75
    float-to-double v6, v4

    .line 77
    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 78
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 81
    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 89
    move-result-object v4

    .line 92
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 93
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 95
    iget-object v6, v5, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 97
    iget-object v5, v5, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 99
    invoke-static {v4, v6, v5}, Lcom/miui/maml/LanguageHelper;->load(Ljava/util/Locale;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/data/Variables;)Z

    .line 101
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 104
    int-to-double v4, v4

    .line 106
    const-string v6, "raw_screen_width"

    .line 107
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 109
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 112
    int-to-double v4, v4

    .line 114
    const-string v6, "raw_screen_height"

    .line 115
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 117
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 120
    int-to-float v4, v4

    .line 122
    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 123
    div-float/2addr v4, v5

    .line 125
    float-to-double v4, v4

    .line 126
    const-string v6, "screen_width"

    .line 127
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 129
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 132
    int-to-float v4, v4

    .line 134
    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 135
    div-float/2addr v4, v5

    .line 137
    float-to-double v4, v4

    .line 138
    const-string v6, "screen_height"

    .line 139
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 141
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRawWidth:I

    .line 144
    const-string/jumbo v5, "view_width"

    .line 146
    if-lez v4, :cond_1

    .line 149
    int-to-double v6, v4

    .line 151
    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 152
    :cond_1
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRawHeight:I

    .line 155
    const-string/jumbo v6, "view_height"

    .line 157
    if-lez v4, :cond_2

    .line 160
    int-to-double v7, v4

    .line 162
    invoke-virtual {v0, v6, v7, v8}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 163
    :cond_2
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 166
    int-to-float v4, v4

    .line 168
    iget v7, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 169
    div-float/2addr v4, v7

    .line 171
    float-to-double v7, v4

    .line 172
    invoke-virtual {v0, v5, v7, v8}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 173
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 176
    int-to-float v4, v4

    .line 178
    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 179
    div-float/2addr v4, v5

    .line 181
    float-to-double v4, v4

    .line 182
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 183
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 186
    int-to-double v4, v4

    .line 188
    const-string v6, "__raw_density"

    .line 189
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 191
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 194
    float-to-double v4, v4

    .line 196
    const-string v6, "__scale_factor"

    .line 197
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 199
    const-string v4, "__maml_version"

    .line 202
    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    .line 204
    invoke-virtual {v0, v4, v5, v6}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 206
    :try_start_0
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 209
    if-eqz v4, :cond_3

    .line 211
    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 213
    if-eqz v4, :cond_3

    .line 215
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 217
    move-result-object v4

    .line 220
    if-eqz v4, :cond_3

    .line 221
    const-string v5, "com.android.thememanager"

    .line 223
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 225
    move-result-object v4

    .line 228
    if-eqz v4, :cond_3

    .line 229
    iget v1, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    move v3, v1

    .line 233
    goto :goto_0

    .line 234
    :catch_0
    const-string/jumbo v4, "thememanager not found"

    .line 235
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_3
    :goto_0
    const-string v1, "__thememanager_version"

    .line 241
    int-to-double v3, v3

    .line 243
    invoke-virtual {v0, v1, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 244
    const-string v1, "ro.miui.ui.version.name"

    .line 247
    invoke-static {v1}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    move-result-object v1

    .line 252
    const-string v3, "__miui_version_name"

    .line 253
    invoke-virtual {v0, v3, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    const-string v1, "ro.miui.ui.version.code"

    .line 258
    invoke-static {v1}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    move-result-object v1

    .line 263
    const-string v3, "__miui_version_code"

    .line 264
    invoke-virtual {v0, v3, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    const-string v1, "__android_version"

    .line 269
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 271
    invoke-virtual {v0, v1, v3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    const-string v1, "__system_version"

    .line 276
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v1, v3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->loadConfig()V

    .line 283
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 286
    if-eqz v0, :cond_4

    .line 288
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->init()V

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 293
    if-eqz v0, :cond_5

    .line 295
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->init()V

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 300
    if-eqz v0, :cond_6

    .line 302
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->init()V

    .line 304
    :cond_6
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 307
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 312
    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 314
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 317
    const-string v1, "postInit"

    .line 319
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 324
    const/4 v1, 0x0

    .line 326
    iput-object v1, v0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 327
    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 330
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 332
    invoke-virtual {v1, v0}, Lcom/miui/maml/RendererController;->setNeedReset(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 337
    return-void
    .line 340
.end method

.method public isDisableCutRoundCorner()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mDisableCutRoundCorner:Z

    .line 2
    return p0
    .line 4
.end method

.method public isMamlBlurWindow()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mBlurWindow:Z

    .line 2
    return p0
    .line 4
.end method

.method public isSupportAccessibilityService()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    .line 2
    return p0
    .line 4
.end method

.method public isTransparentSurface()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mTransparentSurface:Z

    .line 2
    return p0
    .line 4
.end method

.method public isUseHardwareCanvas()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mUseHardwareCanvas:Z

    .line 2
    return p0
    .line 4
.end method

.method public issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 7
    const-string v1, "ScreenElementRoot"

    .line 9
    const-string v2, " "

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "issueExternCommand: "

    .line 28
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {v0, p3, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 48
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 56
    if-eqz v0, :cond_1

    .line 58
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    const-string v3, "issueExternCommand to MamlView: "

    .line 65
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v0, p3, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 85
    if-eqz p0, :cond_2

    .line 87
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 92
    check-cast p0, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 93
    if-eqz p0, :cond_2

    .line 95
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    const-string v0, "issueExternCommand to MamlSurface: "

    .line 102
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {p0, p3, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_2
    return-void
    .line 122
.end method

.method public final load()Z
    .locals 10

    .line 1
    const-string v0, "load finished, spent "

    .line 2
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v2

    .line 10
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 11
    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 13
    invoke-virtual {v4}, Lcom/miui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    .line 15
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const-string v5, "ScreenElementRoot"

    .line 19
    if-nez v4, :cond_0

    .line 21
    :try_start_1
    const-string p0, "load error, manifest root is null"

    .line 23
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return v1

    .line 28
    :cond_0
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 29
    move-result-object v6

    .line 32
    iput-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    .line 33
    invoke-direct {p0, v4}, Lcom/miui/maml/ScreenElementRoot;->loadRawAttrs(Lorg/w3c/dom/Element;)V

    .line 35
    invoke-direct {p0, v4}, Lcom/miui/maml/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    .line 38
    invoke-direct {p0, v4}, Lcom/miui/maml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    .line 41
    const-string v6, "VariableBinders"

    .line 44
    invoke-static {v4, v6}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 46
    move-result-object v6

    .line 49
    new-instance v7, Lcom/miui/maml/data/VariableBinderManager;

    .line 50
    invoke-direct {v7, v6, p0}, Lcom/miui/maml/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 52
    iput-object v7, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 55
    const-string v6, "ExternalCommands"

    .line 57
    invoke-static {v4, v6}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 59
    move-result-object v6

    .line 62
    if-eqz v6, :cond_1

    .line 63
    new-instance v7, Lcom/miui/maml/CommandTriggers;

    .line 65
    invoke-direct {v7, v6, p0}, Lcom/miui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 67
    iput-object v7, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 70
    :cond_1
    const-string v6, "Styles"

    .line 72
    invoke-static {v4, v6}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 74
    move-result-object v6

    .line 77
    if-eqz v6, :cond_2

    .line 78
    new-instance v7, Lcom/miui/maml/StylesManager;

    .line 80
    invoke-direct {v7, v6}, Lcom/miui/maml/StylesManager;-><init>(Lorg/w3c/dom/Element;)V

    .line 82
    iput-object v7, p0, Lcom/miui/maml/ScreenElementRoot;->mStylesManager:Lcom/miui/maml/StylesManager;

    .line 85
    :cond_2
    const-string/jumbo v6, "selfRender"

    .line 87
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v6

    .line 93
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 94
    move-result v6

    .line 97
    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mSelfRender:Z

    .line 98
    const-string/jumbo v6, "transparentSurface"

    .line 100
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object v6

    .line 106
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 107
    move-result v6

    .line 110
    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mTransparentSurface:Z

    .line 111
    const-string v6, "frameRate"

    .line 113
    iget v7, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 115
    invoke-static {v4, v6, v7}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 117
    move-result v6

    .line 120
    iput v6, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 121
    const-string v6, "customizedDarkModeWallpaper"

    .line 123
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v6

    .line 128
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 129
    move-result v6

    .line 132
    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mUseCustomizedDarkModeWallpaper:Z

    .line 133
    const-string v6, "disableCutRoundCorner"

    .line 135
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object v6

    .line 140
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 141
    move-result v6

    .line 144
    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mDisableCutRoundCorner:Z

    .line 145
    const-string v6, "clearCanvas"

    .line 147
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v6

    .line 152
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 153
    move-result v6

    .line 156
    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mClearCanvas:Z

    .line 157
    const-string/jumbo v6, "supportAccessibityService"

    .line 159
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    move-result-object v6

    .line 165
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 166
    move-result v6

    .line 169
    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    .line 170
    const-string v6, "allowScreenRotation"

    .line 172
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v6

    .line 177
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 178
    move-result v6

    .line 181
    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    .line 182
    const-string v6, "blurWindow"

    .line 184
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    move-result-object v6

    .line 189
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 190
    move-result v6

    .line 193
    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mBlurWindow:Z

    .line 194
    const-string/jumbo v6, "useHardwareCanvas"

    .line 196
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object v6

    .line 202
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 203
    move-result v6

    .line 206
    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mUseHardwareCanvas:Z

    .line 207
    new-instance v6, Lcom/miui/maml/RendererController;

    .line 209
    invoke-direct {v6}, Lcom/miui/maml/RendererController;-><init>()V

    .line 211
    iput-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 214
    iget-boolean v7, p0, Lcom/miui/maml/ScreenElementRoot;->mSelfRender:Z

    .line 216
    invoke-virtual {v6, v7}, Lcom/miui/maml/RendererController;->setSelfRender(Z)V

    .line 218
    new-instance v6, Lcom/miui/maml/ScreenElementRoot$InnerGroup;

    .line 221
    invoke-direct {v6, v4, p0}, Lcom/miui/maml/ScreenElementRoot$InnerGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 223
    iput-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 226
    invoke-virtual {v6}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 228
    move-result-object v6

    .line 231
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 232
    move-result v6

    .line 235
    if-gtz v6, :cond_3

    .line 236
    const-string p0, "load error, no element loaded"

    .line 238
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v1

    .line 243
    :cond_3
    const-string/jumbo v6, "version"

    .line 244
    const/4 v7, 0x1

    .line 247
    invoke-static {v4, v6, v7}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 248
    move-result v6

    .line 251
    iput v6, p0, Lcom/miui/maml/ScreenElementRoot;->mVersion:I

    .line 252
    invoke-virtual {p0, v4}, Lcom/miui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    .line 254
    move-result v4

    .line 257
    if-nez v4, :cond_4

    .line 258
    const-string p0, "load error, onLoad fail"

    .line 260
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return v1

    .line 265
    :cond_4
    invoke-direct {p0}, Lcom/miui/maml/ScreenElementRoot;->traverseElements()V

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 274
    move-result-wide v8

    .line 277
    sub-long/2addr v8, v2

    .line 278
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 279
    const-string v0, " ms"

    .line 282
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v0

    .line 290
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput-boolean v7, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    return v7

    .line 296
    :catch_0
    move-exception p0

    .line 297
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    return v1
    .line 301
.end method

.method public loadConfig()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->loadConfig(Ljava/lang/String;)V

    return-void
.end method

.method public needDisallowInterceptTouchEvent()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 2
    return p0
    .line 4
.end method

.method public onAddVariableUpdater(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 0

    .line 1
    new-instance p0, Lcom/miui/maml/data/DateTimeVariableUpdater;

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/data/DateTimeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 4
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    .line 7
    return-void
    .line 10
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$3;

    .line 6
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/ScreenElementRoot$3;-><init>(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->postRunnable(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 6
    const-string p1, "orientationChange"

    .line 9
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const-string v0, "ScreenElementRoot"

    .line 2
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 5
    if-nez v2, :cond_1

    .line 7
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 9
    if-eqz v2, :cond_1

    .line 11
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    .line 13
    if-nez v2, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 18
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onHover(Landroid/view/MotionEvent;)Z

    .line 20
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :cond_1
    :goto_0
    return v1

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto :goto_1

    .line 36
    :catch_1
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_1
    return v1
    .line 48
.end method

.method public onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 2
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    if-eqz p0, :cond_1

    .line 16
    invoke-interface {p0, p2}, Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;->onHoverChange(Ljava/lang/String;)V

    .line 18
    :cond_1
    return-void
    .line 21
.end method

.method public onLoad(Lorg/w3c/dom/Element;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    const-string v0, "ScreenElementRoot"

    .line 2
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 5
    if-nez v2, :cond_7

    .line 7
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 9
    if-eqz v2, :cond_7

    .line 11
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    .line 13
    if-nez v2, :cond_0

    .line 15
    goto/16 :goto_1

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 19
    const/4 v3, 0x1

    .line 21
    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 24
    move-result v2

    .line 27
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 28
    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 30
    move-result v4

    .line 33
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 34
    invoke-virtual {v5}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 36
    move-result v5

    .line 39
    const/high16 v6, 0x40000000    # 2.0f

    .line 40
    div-float/2addr v2, v6

    .line 42
    add-float/2addr v2, v5

    .line 43
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 44
    invoke-virtual {v5}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 46
    move-result v5

    .line 49
    div-float/2addr v4, v6

    .line 50
    add-float/2addr v4, v5

    .line 51
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 54
    move-result v6

    .line 57
    sub-float/2addr v2, v6

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 59
    move-result v6

    .line 62
    sub-float/2addr v4, v6

    .line 63
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 64
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    .line 67
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 69
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 72
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 77
    move-result v2

    .line 80
    if-eq v2, v3, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 83
    move-result p1

    .line 86
    const/4 v2, 0x3

    .line 87
    if-ne p1, v2, :cond_2

    .line 88
    :cond_1
    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 91
    :cond_2
    return v3

    .line 93
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 94
    move-result v2

    .line 97
    float-to-double v4, v2

    .line 98
    invoke-virtual {p0, v4, v5}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 99
    move-result-wide v4

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 103
    move-result v2

    .line 106
    float-to-double v6, v2

    .line 107
    invoke-virtual {p0, v6, v7}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 108
    move-result-wide v6

    .line 111
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchX:Lcom/miui/maml/data/IndexedVariable;

    .line 112
    invoke-virtual {v2, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 114
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchY:Lcom/miui/maml/data/IndexedVariable;

    .line 117
    invoke-virtual {v2, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 122
    move-result v2

    .line 125
    if-eqz v2, :cond_5

    .line 126
    if-eq v2, v3, :cond_4

    .line 128
    goto :goto_0

    .line 130
    :cond_4
    iput-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 131
    goto :goto_0

    .line 133
    :cond_5
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginX:Lcom/miui/maml/data/IndexedVariable;

    .line 134
    invoke-virtual {v2, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 136
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginY:Lcom/miui/maml/data/IndexedVariable;

    .line 139
    invoke-virtual {v2, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 141
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginTime:Lcom/miui/maml/data/IndexedVariable;

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    move-result-wide v3

    .line 149
    long-to-double v3, v3

    .line 150
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 151
    iput-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 156
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    .line 158
    move-result p1

    .line 161
    if-nez p1, :cond_6

    .line 162
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 164
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->requestUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_6
    return p1

    .line 169
    :cond_7
    :goto_1
    return v1

    .line 170
    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 172
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 175
    move-result-object p0

    .line 178
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    goto :goto_2

    .line 182
    :catch_1
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 187
    move-result-object p0

    .line 190
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_2
    return v1
    .line 194
.end method

.method public onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 7
    const-string v0, "ScreenElementRoot"

    .line 10
    const-string v1, "pause"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 17
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 22
    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->pause()V

    .line 24
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    .line 27
    invoke-virtual {v0}, Lcom/miui/maml/SoundManager;->pause()V

    .line 29
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 32
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->pause()V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 39
    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->pause()V

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 46
    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->pause()V

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 53
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 55
    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->pause()V

    .line 57
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0, v0}, Lcom/miui/maml/ScreenElementRoot;->onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    .line 64
    if-eqz v0, :cond_4

    .line 66
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 68
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {v0, p0}, Lcom/miui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    .line 76
    :cond_4
    return-void
    .line 79
.end method

.method public pauseAnim(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->pauseAnim(J)V

    .line 7
    return-void
    .line 10
.end method

.method public playAnim(JJJZZ)V
    .locals 9

    .line 1
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 2
    move-object v0, p0

    .line 5
    iget-object v0, v0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    move-wide v1, p1

    .line 8
    move-wide v3, p3

    .line 9
    move-wide v5, p5

    .line 10
    move/from16 v7, p7

    .line 11
    move/from16 v8, p8

    .line 13
    invoke-virtual/range {v0 .. v8}, Lcom/miui/maml/elements/ElementGroup;->playAnim(JJJZZ)V

    .line 15
    return-void
    .line 18
.end method

.method public playSound(Ljava/lang/String;)I
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/maml/SoundManager$SoundOptions;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/miui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I

    move-result p0

    return p0
.end method

.method public playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/SoundManager;->playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public playSound(ILcom/miui/maml/SoundManager$Command;)V
    .locals 0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/SoundManager;->playSound(ILcom/miui/maml/SoundManager$Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ScreenElementRoot"

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/ScreenContext;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0
    .line 19
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/maml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public putRawAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    return-object p0
    .line 10
.end method

.method public removeAccessibleElement(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    const/high16 p0, -0x80000000

    .line 7
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    .line 9
    return-void
    .line 12
.end method

.method public removeAllAccessibleElements()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 18
    const/high16 v2, -0x80000000

    .line 20
    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 26
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 28
    return-void
    .line 31
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenContext;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    return-void
    .line 7
.end method

.method public removeElement(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-void
    .line 7
.end method

.method public removePreTicker(Lcom/miui/maml/elements/ITicker;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public requestFrameRateByCommand(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 4
    const/4 v0, 0x0

    .line 7
    cmpl-float p1, p1, v0

    .line 8
    if-lez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public requestUpdate()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Lcom/miui/maml/RendererController;

    .line 21
    invoke-virtual {v2}, Lcom/miui/maml/RendererController;->requestUpdate()V

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    return-void
    .line 29
.end method

.method public reset(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->reset(J)V

    .line 7
    return-void
    .line 10
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 7
    const-string v0, "ScreenElementRoot"

    .line 10
    const-string v1, "resume"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->isShowDebugLayout()Z

    .line 17
    move-result v0

    .line 20
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 21
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 23
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->resume()V

    .line 30
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 33
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->resume()V

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 40
    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->resume()V

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 47
    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->resume()V

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 54
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 56
    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->resume()V

    .line 58
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->setSyncInterval()V

    .line 61
    return-void
    .line 64
.end method

.method public resumeAnim(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->resumeAnim(J)V

    .line 7
    return-void
    .line 10
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-nez p0, :cond_0

    const-string p0, "ScreenElementRoot"

    const-string p1, "fail to saveVar, config file is null"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "null"

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;D)V

    :goto_0
    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-nez p0, :cond_0

    const-string p0, "ScreenElementRoot"

    const-string p1, "fail to saveVar, config file is null"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selfFinish()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->finish()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public selfInit()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->init()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public selfPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lcom/miui/maml/RendererController;

    .line 17
    invoke-virtual {v2}, Lcom/miui/maml/RendererController;->selfPause()V

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    return-void
    .line 25
.end method

.method public selfResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lcom/miui/maml/RendererController;

    .line 17
    invoke-virtual {v2}, Lcom/miui/maml/RendererController;->selfResume()V

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    return-void
    .line 25
.end method

.method public setAutoDarkenWallpaper(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mAutoDarkenWallpaper:Z

    .line 2
    return-void
    .line 4
.end method

.method public setBgColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
    .line 2
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setCapability(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget p2, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 4
    or-int/2addr p1, p2

    .line 6
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget p2, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 10
    not-int p1, p1

    .line 12
    and-int/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 14
    :goto_0
    return-void
    .line 16
.end method

.method public setClearCanvas(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mClearCanvas:Z

    .line 2
    return-void
    .line 4
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 6
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 8
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 10
    int-to-double v1, v1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    move-result-object v1

    .line 16
    const-string v2, "orientation"

    .line 17
    invoke-static {v2, v0, v1}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/Double;)V

    .line 19
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 22
    const/4 v1, 0x1

    .line 24
    const-string v2, "screen_height"

    .line 25
    const-string v3, "screen_width"

    .line 27
    const-string v4, "raw_screen_height"

    .line 29
    const-string v5, "raw_screen_width"

    .line 31
    if-eq p1, v1, :cond_1

    .line 33
    const/4 v1, 0x2

    .line 35
    if-eq p1, v1, :cond_0

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 39
    int-to-double v6, p1

    .line 41
    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 42
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 45
    int-to-double v5, p1

    .line 47
    invoke-virtual {v0, v4, v5, v6}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 48
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 51
    int-to-float p1, p1

    .line 53
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 54
    div-float/2addr p1, v1

    .line 56
    float-to-double v4, p1

    .line 57
    invoke-virtual {v0, v3, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 58
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 61
    int-to-float p1, p1

    .line 63
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 64
    div-float/2addr p1, p0

    .line 66
    float-to-double p0, p1

    .line 67
    invoke-virtual {v0, v2, p0, p1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 72
    int-to-double v6, p1

    .line 74
    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 75
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 78
    int-to-double v5, p1

    .line 80
    invoke-virtual {v0, v4, v5, v6}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 81
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 84
    int-to-float p1, p1

    .line 86
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 87
    div-float/2addr p1, v1

    .line 89
    float-to-double v4, p1

    .line 90
    invoke-virtual {v0, v3, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 91
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 94
    int-to-float p1, p1

    .line 96
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 97
    div-float/2addr p1, p0

    .line 99
    float-to-double p0, p1

    .line 100
    invoke-virtual {v0, v2, p0, p1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 101
    :cond_2
    :goto_0
    return-void
    .line 104
.end method

.method public setDarkWallpaperMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mDarkWallpaperMode:Z

    .line 2
    return-void
    .line 4
.end method

.method public setDefaultFramerate(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 2
    return-void
    .line 4
.end method

.method public final setKeepResource(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 2
    return-void
    .line 4
.end method

.method public setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 2
    return-void
    .line 4
.end method

.method public setMamlSurface(Lcom/miui/maml/component/MamlSurface;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    .line 7
    return-void
    .line 9
.end method

.method public setMamlSurfaceOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    move-object p1, v0

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 12
    return-void
    .line 14
.end method

.method public setMamlViewOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    move-object p1, v0

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 12
    return-void
    .line 14
.end method

.method public setOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    move-object p1, v0

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 12
    return-void
    .line 14
.end method

.method public setOnHoverChangeListener(Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    .line 7
    return-void
    .line 9
.end method

.method public setRenderControllerListener(Lcom/miui/maml/RendererController$Listener;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/miui/maml/SingleRootListener;

    .line 6
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/SingleRootListener;-><init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/RendererController$IRenderable;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerListener(Lcom/miui/maml/RendererController$Listener;)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigOnlyInPause:Z

    .line 2
    return-void
    .line 4
.end method

.method public setSaveConfigViaProvider(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigViaProvider:Z

    .line 2
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->setSaveViaProvider(Z)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setScaleByDensity(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 2
    return-void
    .line 4
.end method

.method public setSyncInterval()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getSystemFrameRate()F

    .line 2
    move-result p0

    .line 5
    float-to-int p0, p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    const/16 v0, 0x3e8

    .line 9
    div-int/2addr v0, p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x10

    .line 13
    :goto_0
    const/4 p0, 0x1

    .line 15
    if-ge v0, p0, :cond_1

    .line 16
    move v0, p0

    .line 18
    :cond_1
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0, v0}, Lcom/miui/maml/RenderVsyncUpdater;->setSyncInterval(I)V

    .line 23
    return-void
    .line 26
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    .line 2
    return-void
    .line 4
.end method

.method public setViewManager(Lcom/miui/maml/util/MamlViewManager;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    .line 7
    return-void
    .line 9
.end method

.method public shouldPlaySound()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 4
    return-void
    .line 7
.end method

.method public showFramerate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mShowFramerate:Z

    .line 2
    return-void
    .line 4
.end method

.method public tick(J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$1;

    .line 6
    invoke-direct {v0, p0, p1, p2}, Lcom/miui/maml/ScreenElementRoot$1;-><init>(Lcom/miui/maml/ScreenElementRoot;J)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V

    .line 11
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 15
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 17
    invoke-virtual {v1, v0}, Lcom/miui/maml/RendererController;->setNeedReset(Z)V

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ScreenElementRoot;->doTick(J)V

    .line 22
    return-void
    .line 25
.end method

.method public update(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const-wide v1, 0x7fffffffffffffffL

    .line 8
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v0, :cond_2

    .line 14
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 21
    check-cast v4, Lcom/miui/maml/RendererController;

    .line 22
    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    .line 24
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 30
    move-result v5

    .line 33
    if-nez v5, :cond_0

    .line 34
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v4, p1, p2}, Lcom/miui/maml/RendererController;->update(J)J

    .line 37
    move-result-wide v4

    .line 40
    cmp-long v6, v4, v1

    .line 41
    if-gez v6, :cond_1

    .line 43
    move-wide v1, v4

    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    return-wide v1
    .line 49
.end method

.method public updateIfNeeded(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const-wide v1, 0x7fffffffffffffffL

    .line 8
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v0, :cond_2

    .line 14
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 21
    check-cast v4, Lcom/miui/maml/RendererController;

    .line 22
    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    .line 24
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 30
    move-result v5

    .line 33
    if-nez v5, :cond_0

    .line 34
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v4, p1, p2}, Lcom/miui/maml/RendererController;->updateIfNeeded(J)J

    .line 37
    move-result-wide v4

    .line 40
    cmp-long v6, v4, v1

    .line 41
    if-gez v6, :cond_1

    .line 43
    move-wide v1, v4

    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    return-wide v1
    .line 49
.end method

.method public final version()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mVersion:I

    .line 2
    return p0
    .line 4
.end method
