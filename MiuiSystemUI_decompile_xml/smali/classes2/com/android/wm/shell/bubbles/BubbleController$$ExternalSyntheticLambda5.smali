.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/BubbleEntry;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/wm/shell/bubbles/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;->f$1:Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 7
    iput-boolean p4, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;->f$2:Z

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;->f$3:Lcom/android/wm/shell/bubbles/Bubble;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;->f$1:Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 4
    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;->f$2:Z

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;->f$3:Lcom/android/wm/shell/bubbles/Bubble;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const/4 v3, 0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    .line 16
    move-result p0

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleEntry;->setFlagBubble(Z)V

    .line 20
    if-eqz p0, :cond_0

    .line 23
    const/4 p0, 0x3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    :try_start_0
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 28
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    invoke-interface {v0, v1, v2, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_1

    .line 37
    :cond_1
    if-eqz v2, :cond_2

    .line 38
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 40
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOrCreateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    .line 47
    move-result v1

    .line 50
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    .line 51
    move-result v2

    .line 54
    xor-int/2addr v2, v3

    .line 55
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleController;->inflateAndAdd(Lcom/android/wm/shell/bubbles/Bubble;ZZ)V

    .line 56
    :catch_0
    :cond_2
    :goto_1
    return-void
    .line 59
.end method
