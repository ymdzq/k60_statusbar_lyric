.class public final Lcom/android/systemui/assist/AssistManager$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/assist/AssistManager;

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$opts:Landroid/app/ActivityOptions;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$3;->val$intent:Landroid/content/Intent;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/assist/AssistManager$3;->val$opts:Landroid/app/ActivityOptions;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$3;->val$intent:Landroid/content/Intent;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager$3;->val$opts:Landroid/app/ActivityOptions;

    .line 8
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 10
    move-result-object v2

    .line 13
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 16
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 24
    return-void
    .line 27
.end method
