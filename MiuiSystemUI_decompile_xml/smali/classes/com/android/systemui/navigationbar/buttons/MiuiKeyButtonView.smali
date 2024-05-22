.class public Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;
.super Lcom/android/systemui/navigationbar/buttons/KeyButtonView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mKeyguardState:Z

.field public mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallBack:Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;-><init>(Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;->mKeyguardStateControllerCallBack:Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;-><init>(Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;->mKeyguardStateControllerCallBack:Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManagerGlobal;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManagerGlobal;Lcom/android/internal/logging/UiEventLogger;)V

    .line 2
    new-instance p1, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;-><init>(Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;->mKeyguardStateControllerCallBack:Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 11
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;->mKeyguardStateControllerCallBack:Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;

    .line 15
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 19
    return-void
    .line 22
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;->mKeyguardStateControllerCallBack:Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;->mKeyguardState:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method
