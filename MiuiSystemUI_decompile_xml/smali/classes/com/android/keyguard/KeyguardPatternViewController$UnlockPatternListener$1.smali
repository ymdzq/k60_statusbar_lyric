.class public final Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/OnCheckForUsersCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/keyguard/KeyguardPatternViewController$1;

.field public final synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternViewController$1;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 4
    iput p2, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->val$userId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onChecked(IIIZ)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x4

    .line 4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object p0, v2, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 15
    iget-object p0, v2, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 20
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 23
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 26
    if-nez p4, :cond_0

    .line 28
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x1

    .line 31
    move v3, p1

    .line 32
    move v4, p2

    .line 33
    move v5, p3

    .line 34
    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/KeyguardPatternViewController$1;->onPatternChecked(IIIZZ)V

    .line 35
    :cond_0
    return-void

    .line 38
    :goto_0
    iget-object p0, v2, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 43
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 48
.end method

.method public final onEarlyMatched()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, v2, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 11
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 15
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 18
    iget v5, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->val$userId:I

    .line 20
    const/4 v6, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v7, 0x1

    .line 24
    move v3, v5

    .line 25
    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/KeyguardPatternViewController$1;->onPatternChecked(IIIZZ)V

    .line 26
    return-void

    .line 29
    :goto_0
    iget-object v0, v2, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 30
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 34
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 37
    iget v5, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->val$userId:I

    .line 39
    const/4 v6, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v7, 0x1

    .line 43
    move v3, v5

    .line 44
    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/KeyguardPatternViewController$1;->onPatternChecked(IIIZZ)V

    .line 45
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method
