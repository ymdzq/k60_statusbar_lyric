.class public final Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$OnWindowChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onExpandChange(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mControlPanelExpand:Z

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mControlPanelExpand:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method
