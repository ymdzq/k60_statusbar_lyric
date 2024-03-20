.class public abstract Lmiuix/responsive/page/manager/BaseResponseStateManager;
.super Lmiuix/responsive/page/manager/BaseStateManager;
.source "BaseResponseStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;,
        Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;
    }
.end annotation


# instance fields
.field protected mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

.field protected mResponsiveMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;",
            ">;"
        }
    .end annotation
.end field

.field protected mResponsiveMapChild:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lmiuix/responsive/map/ResponsiveViewSpec;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mResponsiveViewGroup:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/responsive/map/ResponsiveViewSpec;",
            ">;"
        }
    .end annotation
.end field

.field protected mRootView:Landroid/view/View;

.field protected mViewResponsives:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/responsive/interfaces/IViewResponsive;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/responsive/interfaces/IResponsive;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lmiuix/responsive/page/manager/BaseStateManager;-><init>()V

    .line 46
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    .line 47
    invoke-interface {p1}, Lmiuix/responsive/interfaces/IResponsive;->getResponsiveSubject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    invoke-interface {p1}, Lmiuix/responsive/interfaces/IResponsive;->getResponsiveSubject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {p0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->registerLifecycle(Landroidx/lifecycle/LifecycleOwner;)V

    .line 50
    :cond_0
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    .line 51
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    .line 52
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    .line 53
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    .line 54
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    new-instance v0, Lmiuix/responsive/page/manager/BaseResponseStateManager$1;

    invoke-direct {v0, p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager$1;-><init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;)V

    invoke-static {p1, v0}, Lmiuix/responsive/wrapper/WrapperHelper;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 62
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->computeResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    return-void
.end method

.method static synthetic access$000(Lmiuix/responsive/page/manager/BaseResponseStateManager;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->parseResponsiveViews(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V

    return-void
.end method

.method private bindResponseView(Landroid/view/View;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    new-instance v1, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;

    invoke-direct {v1, p0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;-><init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;Landroid/view/View;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lmiuix/responsive/map/ResponsiveViewSpec;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Lmiuix/responsive/map/ResponsiveViewSpec;-><init>(I)V

    const/4 v1, 0x3

    .line 137
    invoke-virtual {v0, v1}, Lmiuix/responsive/map/ResponsiveViewSpec;->setEffectiveScreenOrientation(I)V

    .line 138
    iget-object p0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private injectOnHierarchyChangeListener(Landroid/view/ViewGroup;)V
    .locals 1

    .line 155
    new-instance v0, Lmiuix/responsive/page/manager/BaseResponseStateManager$2;

    invoke-direct {v0, p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager$2;-><init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;)V

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private parseResponsiveViews(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 71
    iput-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mRootView:Landroid/view/View;

    .line 74
    :cond_0
    sget-object v0, Lmiuix/core/R$styleable;->ResponsiveSpec:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p3, "\\."

    .line 76
    invoke-virtual {p4, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 77
    array-length p3, p3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-le p3, v0, :cond_1

    .line 78
    invoke-static {p4}, Lmiuix/reflect/Reflects;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 79
    const-class p4, Lmiuix/responsive/interfaces/IViewResponsive;

    invoke-virtual {p4, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 80
    sget p3, Lmiuix/core/R$styleable;->ResponsiveSpec_android_id:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p3, v1, :cond_1

    .line 82
    iget-object p4, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p4, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_1
    sget p3, Lmiuix/core/R$styleable;->ResponsiveSpec_effectiveScreenOrientation:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    if-eqz p3, :cond_2

    .line 92
    sget p2, Lmiuix/core/R$styleable;->ResponsiveSpec_android_id:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v1, :cond_4

    .line 94
    new-instance p4, Lmiuix/responsive/map/ResponsiveViewSpec;

    invoke-direct {p4, p2}, Lmiuix/responsive/map/ResponsiveViewSpec;-><init>(I)V

    .line 95
    invoke-virtual {p4, p3}, Lmiuix/responsive/map/ResponsiveViewSpec;->setEffectiveScreenOrientation(I)V

    .line 96
    iget-object p0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_2
    sget p3, Lmiuix/core/R$styleable;->ResponsiveSpec_hideInScreenMode:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    if-eqz p3, :cond_4

    .line 102
    iget-object p4, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    if-nez p4, :cond_3

    .line 104
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->bindResponseView(Landroid/view/View;)V

    .line 107
    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->injectOnHierarchyChangeListener(Landroid/view/ViewGroup;)V

    .line 109
    :cond_3
    sget p0, Lmiuix/core/R$styleable;->ResponsiveSpec_android_id:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    if-eq p0, v1, :cond_4

    .line 111
    new-instance p2, Lmiuix/responsive/map/ResponsiveViewSpec;

    invoke-direct {p2, p0, p3}, Lmiuix/responsive/map/ResponsiveViewSpec;-><init>(II)V

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private registerLifecycle(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 124
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;

    invoke-direct {v0, p0, p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;-><init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;Lmiuix/responsive/page/manager/BaseResponseStateManager;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 231
    invoke-static {}, Lmiuix/responsive/page/manager/BaseStateManager;->isSupportResponsive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->computeResponsiveStateFromConfig(Landroid/content/res/Configuration;)Lmiuix/responsive/map/ResponsiveState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 233
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->onAfterConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 234
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mOldState:Lmiuix/responsive/map/ResponsiveState;

    invoke-virtual {p0, v0, v1}, Lmiuix/responsive/page/manager/BaseStateManager;->isStateEquals(Lmiuix/responsive/map/ResponsiveState;Lmiuix/responsive/map/ResponsiveState;)Z

    move-result v0

    .line 235
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->notifyResponseChange(Landroid/content/res/Configuration;Lmiuix/responsive/map/ResponsiveState;Z)V

    :cond_0
    return-void
.end method

.method public beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 223
    invoke-static {}, Lmiuix/responsive/page/manager/BaseStateManager;->isSupportResponsive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mOldState:Lmiuix/responsive/map/ResponsiveState;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    invoke-virtual {v0, v1}, Lmiuix/responsive/map/ResponsiveState;->setTo(Lmiuix/responsive/map/ResponsiveState;)V

    .line 225
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->onBeforeConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 244
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->onDestroy()V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    .line 246
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 247
    iget-object p0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public getState()Lmiuix/responsive/map/ResponsiveState;
    .locals 0

    .line 120
    iget-object p0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    return-object p0
.end method

.method protected notifyResponseChange(Landroid/content/res/Configuration;Lmiuix/responsive/map/ResponsiveState;Z)V
    .locals 4

    .line 192
    new-instance v0, Lmiuix/responsive/map/ScreenSpec;

    invoke-direct {v0}, Lmiuix/responsive/map/ScreenSpec;-><init>()V

    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {p2, v0}, Lmiuix/responsive/map/ResponsiveState;->toScreenSpec(Lmiuix/responsive/map/ScreenSpec;)V

    .line 197
    :cond_0
    iget-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    invoke-interface {p2, p1, v0, p3}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 200
    iget-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 201
    iget-object v2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/responsive/interfaces/IResponsive;

    if-eqz v1, :cond_1

    .line 203
    invoke-interface {v1, p1, v0, p3}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 208
    iget-object v2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/responsive/interfaces/IViewResponsive;

    if-nez v2, :cond_3

    .line 210
    iget-object v2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/responsive/interfaces/IViewResponsive;

    .line 211
    iget-object v3, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_3
    invoke-interface {v2, p1, v0, p3}, Lmiuix/responsive/interfaces/IViewResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 251
    invoke-static {}, Lmiuix/responsive/map/ResponsiveStateManager;->getInstance()Lmiuix/responsive/map/ResponsiveStateManager;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/responsive/map/ResponsiveStateManager;->remove(Landroid/content/Context;)V

    return-void
.end method

.method public testNotifyResponseChange(I)V
    .locals 5

    .line 177
    new-instance v0, Lmiuix/responsive/map/ScreenSpec;

    invoke-direct {v0}, Lmiuix/responsive/map/ScreenSpec;-><init>()V

    .line 178
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->getState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/responsive/map/ResponsiveState;->toScreenSpec(Lmiuix/responsive/map/ScreenSpec;)V

    .line 179
    iput p1, v0, Lmiuix/responsive/map/ScreenSpec;->screenMode:I

    .line 181
    iget-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v0, v2}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 183
    iget-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 184
    iget-object v4, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/responsive/interfaces/IResponsive;

    if-eqz v3, :cond_0

    .line 186
    invoke-interface {v3, v1, v0, v2}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
