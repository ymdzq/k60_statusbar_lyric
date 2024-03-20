.class public final Lcom/android/systemui/media/controls/ui/KeyguardMediaController$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/KeyguardMediaController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$2;->this$0:Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$2;->this$0:Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 10
    move-result p1

    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->useSplitShade:Z

    .line 14
    if-ne v0, p1, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->useSplitShade:Z

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->reattachHostView()V

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->refreshMediaPosition()V

    .line 24
    :goto_0
    return-void
    .line 27
.end method
