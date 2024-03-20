.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mCarrierTextCallback:Lcom/android/keyguard/CarrierText$1;

.field public mCarrierTextController:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance v0, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextCallback:Lcom/android/keyguard/CarrierText$1;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->CarrierText:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    new-instance p1, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    throw p0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextController:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextCallback:Lcom/android/keyguard/CarrierText$1;

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->addCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController$CarrierTextListener;)V

    .line 9
    return-void
    .line 12
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextController:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextCallback:Lcom/android/keyguard/CarrierText$1;

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->removeCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController$CarrierTextListener;)V

    .line 9
    return-void
    .line 12
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 11
    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextController:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 13
    return-void
    .line 15
.end method
