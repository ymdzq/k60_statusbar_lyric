.class public final Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 2
    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onVrStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrMode:Z

    .line 4
    return-void
    .line 6
.end method
