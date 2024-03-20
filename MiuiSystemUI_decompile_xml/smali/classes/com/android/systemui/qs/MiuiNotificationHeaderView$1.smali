.class public final Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/MiuiNotificationHeaderView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/MiuiNotificationHeaderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;->this$0:Lcom/android/systemui/qs/MiuiNotificationHeaderView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;->this$0:Lcom/android/systemui/qs/MiuiNotificationHeaderView;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mMiuiOptimization:Z

    .line 4
    if-eq v0, p1, :cond_1

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mMiuiOptimization:Z

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 10
    if-eqz p0, :cond_1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    const/16 p1, 0x8

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    :cond_1
    return-void
    .line 23
.end method
