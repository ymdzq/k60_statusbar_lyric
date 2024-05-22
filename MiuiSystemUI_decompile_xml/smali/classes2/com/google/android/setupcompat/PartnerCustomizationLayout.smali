.class public Lcom/google/android/setupcompat/PartnerCustomizationLayout;
.super Lcom/google/android/setupcompat/internal/TemplateLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final LOG:Lcom/google/android/setupcompat/util/Logger;


# instance fields
.field public activity:Landroid/app/Activity;

.field public layoutTypeBundle:Landroid/os/PersistableBundle;

.field public useDynamicColor:Z

.field public useFullDynamicColorAttr:Z

.field public usePartnerResourceAttr:Z

.field final windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# direct methods
.method public static $r8$lambda$hi6DXGXNayLMVvOqv8MxU7mdbtA(Lcom/google/android/setupcompat/PartnerCustomizationLayout;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 10
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 20
    new-instance v3, Landroid/os/Bundle;

    .line 22
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 24
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 27
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 34
    const-string v5, "packageName"

    .line 35
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 40
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 47
    const-string v4, "screenName"

    .line 48
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "hash"

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 55
    move-result p0

    .line 58
    invoke-virtual {v3, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string p0, "focus"

    .line 62
    invoke-virtual {v3, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string/jumbo p0, "timeInMillis"

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    move-result-wide v4

    .line 73
    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    :try_start_0
    iget-object p0, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->loggingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 80
    new-instance p1, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;

    .line 82
    const/4 v2, 0x1

    .line 84
    invoke-direct {p1, v0, v1, v3, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 85
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 91
    :catch_0
    move-exception p0

    .line 92
    const-string p1, "Screen %s report focus changed failed."

    .line 93
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 95
    move-result-object v0

    .line 98
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 102
    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 103
    invoke-virtual {v0, p1, p0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :goto_0
    return-void
    .line 108
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    .line 2
    const-string v1, "PartnerCustomizationLayout"

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 3
    new-instance p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;I)V

    iput-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    const/4 p1, 0x0

    const p2, 0x7f04074e    # @attr/sucLayoutTheme

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;I)V

    iput-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    const p1, 0x7f04074e    # @attr/sucLayoutTheme

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;I)V

    iput-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 10
    invoke-virtual {p0, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Landroid/app/Activity;

    .line 6
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    check-cast p0, Landroid/content/ContextWrapper;

    .line 13
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 15
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 19
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v0, "Cannot find instance of Activity in parent tree"

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0
    .line 31
.end method


# virtual methods
.method public findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const p1, 0x7f0a0902    # @id/suc_layout_content

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public getLayoutTypeMetrics()Landroid/os/PersistableBundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->layoutTypeBundle:Landroid/os/PersistableBundle;

    .line 2
    return-object p0
    .line 4
.end method

.method public final init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 12
    sget-object v1, Lcom/google/android/setupcompat/R$styleable;->SucPartnerCustomizationLayout:[I

    .line 13
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 16
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 21
    move-result v1

    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    if-eqz v1, :cond_1

    .line 28
    const/16 v0, 0x400

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/setupcompat/template/StatusBarMixin;

    .line 35
    iget-object v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 37
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 39
    move-result-object v1

    .line 42
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/setupcompat/template/StatusBarMixin;-><init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;Landroid/view/Window;Landroid/util/AttributeSet;I)V

    .line 43
    const-class v1, Lcom/google/android/setupcompat/template/StatusBarMixin;

    .line 46
    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 48
    new-instance v0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    .line 51
    iget-object v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 53
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 55
    move-result-object v1

    .line 58
    invoke-direct {v0, p0, v1}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V

    .line 59
    const-class v1, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    .line 62
    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 64
    new-instance v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 67
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 69
    const-class v2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 72
    invoke-virtual {p0, v2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 74
    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    .line 81
    invoke-virtual {v0, p1, p2}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerCustomizations(Landroid/util/AttributeSet;I)V

    .line 83
    iget-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 88
    move-result-object p1

    .line 91
    const/high16 p2, -0x80000000

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 94
    iget-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 99
    move-result-object p1

    .line 102
    const/high16 p2, 0x4000000

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    .line 105
    iget-object p0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 110
    move-result-object p0

    .line 113
    const/high16 p1, 0x8000000

    .line 114
    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 116
    return-void
    .line 119
.end method

.method public final onAttachedToWindow()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 5
    sget v1, Lcom/google/android/setupcompat/internal/LifecycleFragment;->$r8$clinit:I

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 34
    new-instance v3, Landroid/os/Bundle;

    .line 35
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 40
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 47
    const-string v5, "screenName"

    .line 48
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 53
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 60
    const-string v5, "intentAction"

    .line 61
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    :try_start_0
    iget-object v4, v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->loggingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 69
    new-instance v5, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;

    .line 71
    const/4 v6, 0x0

    .line 73
    invoke-direct {v5, v1, v2, v3, v6}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 74
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    const-string v3, "Screen %s bind back fail."

    .line 82
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 87
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 91
    sget-object v3, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 92
    invoke-virtual {v3, v2, v1}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 97
    move-result-object v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    .line 103
    move-result v2

    .line 106
    if-nez v2, :cond_2

    .line 107
    const-string v2, "lifecycle_monitor"

    .line 109
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 111
    move-result-object v3

    .line 114
    const-string v4, "LifecycleFragment"

    .line 115
    if-nez v3, :cond_0

    .line 117
    new-instance v5, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    .line 119
    invoke-direct {v5}, Lcom/google/android/setupcompat/internal/LifecycleFragment;-><init>()V

    .line 121
    :try_start_1
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 124
    move-result-object v1

    .line 127
    invoke-virtual {v1, v5, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 128
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitNow()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    move-object v3, v5

    .line 135
    goto :goto_1

    .line 136
    :catch_1
    move-exception v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    const-string v5, "Error occurred when attach to Activity:"

    .line 140
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 145
    move-result-object v0

    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 155
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    goto :goto_1

    .line 159
    :cond_0
    instance-of v1, v3, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    .line 160
    if-nez v1, :cond_1

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 171
    const-string v1, " Incorrect instance on lifecycle fragment."

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 177
    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    goto :goto_2

    .line 181
    :cond_1
    :goto_1
    check-cast v3, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    .line 182
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 184
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 186
    move-result-object v0

    .line 189
    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    .line 190
    move-result v0

    .line 193
    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 196
    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 202
    :cond_3
    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 205
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 207
    move-result-object p0

    .line 210
    check-cast p0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 211
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 213
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isPrimaryButtonVisible()Z

    .line 215
    move-result v1

    .line 218
    iget-object v2, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 219
    const-string v3, "Unknown"

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    move-result v2

    .line 226
    const-string v4, "Visible"

    .line 227
    const-string v5, "Invisible"

    .line 229
    if-eqz v2, :cond_5

    .line 231
    if-eqz v1, :cond_4

    .line 233
    move-object v1, v4

    .line 235
    goto :goto_3

    .line 236
    :cond_4
    move-object v1, v5

    .line 237
    goto :goto_3

    .line 238
    :cond_5
    iget-object v1, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 239
    :goto_3
    iput-object v1, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 243
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonVisible()Z

    .line 245
    move-result p0

    .line 248
    iget-object v1, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 249
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    move-result v1

    .line 254
    if-eqz v1, :cond_7

    .line 255
    if-eqz p0, :cond_6

    .line 257
    goto :goto_4

    .line 259
    :cond_6
    move-object v4, v5

    .line 260
    goto :goto_4

    .line 261
    :cond_7
    iget-object v4, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 262
    :goto_4
    iput-object v4, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 264
    return-void
    .line 266
.end method

.method public final onBeforeTemplateInflated(Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->usePartnerResourceAttr:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 9
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 13
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    .line 19
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v2

    .line 26
    sget-object v3, Lcom/google/android/setupcompat/R$styleable;->SucPartnerCustomizationLayout:[I

    .line 27
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 30
    move-result-object p1

    .line 33
    const/4 p2, 0x2

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 35
    move-result v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    sget-object v2, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    const-string v5, "Attribute sucUsePartnerResource not found in "

    .line 45
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v5, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 50
    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 52
    move-result-object v5

    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 63
    :cond_0
    if-nez v1, :cond_2

    .line 66
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 68
    move-result p2

    .line 71
    if-eqz p2, :cond_1

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    move v0, v4

    .line 75
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->usePartnerResourceAttr:Z

    .line 76
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 78
    move-result p2

    .line 81
    iput-boolean p2, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useDynamicColor:Z

    .line 82
    invoke-virtual {p1, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 84
    move-result p2

    .line 87
    iput-boolean p2, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColorAttr:Z

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    sget-object p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    const-string v0, "activity="

    .line 97
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v0, " isSetupFlow="

    .line 115
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, " enablePartnerResourceLoading=true usePartnerResourceAttr="

    .line 123
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->usePartnerResourceAttr:Z

    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    const-string v0, " useDynamicColor="

    .line 133
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useDynamicColor:Z

    .line 138
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    const-string v0, " useFullDynamicColorAttr="

    .line 143
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-boolean p0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColorAttr:Z

    .line 148
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 156
    const-string p2, "SetupLibrary"

    .line 157
    const/4 v0, 0x3

    .line 159
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 160
    move-result v0

    .line 163
    if-eqz v0, :cond_3

    .line 164
    iget-object p1, p1, Lcom/google/android/setupcompat/util/Logger;->prefix:Ljava/lang/String;

    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object p0

    .line 171
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    goto :goto_1

    .line 175
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    :goto_1
    return-void
    .line 179
.end method

.method public final onDetachedFromWindow()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_5

    .line 15
    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 23
    iget-object v1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isPrimaryButtonVisible()Z

    .line 27
    move-result v2

    .line 30
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonVisible()Z

    .line 31
    move-result v3

    .line 34
    iget-object v4, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 35
    invoke-static {v4, v2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->updateButtonVisibilityState(Ljava/lang/String;Z)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 40
    iput-object v2, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 41
    iget-object v2, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 43
    invoke-static {v2, v3}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->updateButtonVisibilityState(Ljava/lang/String;Z)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 48
    iput-object v2, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 49
    iget-object v1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 51
    iget-object v2, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 53
    if-eqz v1, :cond_0

    .line 55
    const-string v3, "PrimaryFooterButton"

    .line 57
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/template/FooterButton;->getMetrics(Ljava/lang/String;)Landroid/os/PersistableBundle;

    .line 59
    move-result-object v1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 64
    :goto_0
    if-eqz v2, :cond_1

    .line 66
    const-string v3, "SecondaryFooterButton"

    .line 68
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;->getMetrics(Ljava/lang/String;)Landroid/os/PersistableBundle;

    .line 70
    move-result-object v2

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    sget-object v2, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 75
    :goto_1
    iget-object v3, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->layoutTypeBundle:Landroid/os/PersistableBundle;

    .line 77
    if-eqz v3, :cond_2

    .line 79
    goto :goto_2

    .line 81
    :cond_2
    sget-object v3, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 82
    :goto_2
    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    new-instance v4, Landroid/os/PersistableBundle;

    .line 89
    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 91
    const-string v5, "PrimaryButtonVisibility"

    .line 94
    iget-object v6, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 96
    invoke-virtual {v4, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v5, "SecondaryButtonVisibility"

    .line 101
    iget-object v0, v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 103
    invoke-virtual {v4, v5, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    filled-new-array {v2, v3}, [Landroid/os/PersistableBundle;

    .line 108
    move-result-object v0

    .line 111
    sget-object v2, Lcom/google/android/setupcompat/internal/PersistableBundles;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    .line 114
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    filled-new-array {v4, v1}, [Landroid/os/PersistableBundle;

    .line 119
    move-result-object v1

    .line 122
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 123
    move-result-object v1

    .line 126
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 130
    new-instance v7, Landroid/os/PersistableBundle;

    .line 133
    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    .line 135
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    move-result-object v0

    .line 141
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    move-result v1

    .line 145
    if-eqz v1, :cond_4

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    move-result-object v1

    .line 151
    check-cast v1, Landroid/os/PersistableBundle;

    .line 152
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    .line 154
    move-result-object v2

    .line 157
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 158
    move-result-object v2

    .line 161
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    move-result v3

    .line 165
    if-eqz v3, :cond_3

    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    move-result-object v3

    .line 171
    check-cast v3, Ljava/lang/String;

    .line 172
    invoke-virtual {v7, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    .line 174
    move-result v4

    .line 177
    xor-int/lit8 v4, v4, 0x1

    .line 178
    const-string v5, "Found duplicate key [%s] while attempting to merge bundles."

    .line 180
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 182
    move-result-object v3

    .line 185
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    move-result-object v3

    .line 189
    invoke-static {v3, v4}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(Ljava/lang/String;Z)V

    .line 190
    goto :goto_4

    .line 193
    :cond_3
    invoke-virtual {v7, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 194
    goto :goto_3

    .line 197
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 198
    move-result-object v0

    .line 201
    const-string v1, "SetupCompatMetrics"

    .line 202
    iget-object v2, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->activity:Landroid/app/Activity;

    .line 204
    invoke-static {v1, v2}, Lcom/google/android/setupcompat/logging/MetricKey;->get(Ljava/lang/String;Landroid/app/Activity;)Lcom/google/android/setupcompat/logging/MetricKey;

    .line 206
    move-result-object v6

    .line 209
    sget-object v1, Lcom/google/android/setupcompat/logging/CustomEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 210
    sget-object v8, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 212
    new-instance v1, Lcom/google/android/setupcompat/logging/CustomEvent;

    .line 214
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 216
    sget-object v3, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    .line 218
    invoke-interface {v3}, Lcom/google/android/setupcompat/internal/Ticker;->read()J

    .line 220
    move-result-wide v3

    .line 223
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 224
    move-result-wide v4

    .line 227
    invoke-static {v7}, Lcom/google/android/setupcompat/internal/PersistableBundles;->assertIsValid(Landroid/os/PersistableBundle;)V

    .line 228
    invoke-static {v8}, Lcom/google/android/setupcompat/internal/PersistableBundles;->assertIsValid(Landroid/os/PersistableBundle;)V

    .line 231
    move-object v3, v1

    .line 234
    invoke-direct/range {v3 .. v8}, Lcom/google/android/setupcompat/logging/CustomEvent;-><init>(JLcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    .line 235
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/logging/SetupMetricsLogger;->logCustomEvent(Landroid/content/Context;Lcom/google/android/setupcompat/logging/CustomEvent;)V

    .line 238
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 241
    move-result-object v0

    .line 244
    iget-object p0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 245
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 247
    return-void
    .line 250
.end method

.method public onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    const p2, 0x7f0d02ab    # @layout/partner_customization_layout 'res/layout/partner_customization_layout.xml'

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public setLayoutTypeMetrics(Landroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->layoutTypeBundle:Landroid/os/PersistableBundle;

    .line 2
    return-void
    .line 4
.end method

.method public final shouldApplyDynamicColor()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useDynamicColor:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isAvailable()Z

    .line 16
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    return v1

    .line 22
    :cond_1
    const/4 p0, 0x1

    .line 23
    return p0
    .line 24
.end method

.method public final shouldApplyPartnerResource()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->usePartnerResourceAttr:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isAvailable()Z

    .line 16
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    return v1

    .line 22
    :cond_1
    const/4 p0, 0x1

    .line 23
    return p0
    .line 24
.end method

.method public final useFullDynamicColor()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyDynamicColor()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean p0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColorAttr:Z

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method
