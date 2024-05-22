.class public final Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/OnCheckForUsersCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

.field public final synthetic val$password:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic val$startUnlockTime:J

.field public final synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;JILcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    .line 4
    iput-wide p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->val$startUnlockTime:J

    .line 6
    iput p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->val$userId:I

    .line 8
    iput-object p5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final onChecked(IIIZ)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 10
    const/4 v2, 0x4

    .line 12
    invoke-virtual {v0, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 13
    iget-object v0, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 18
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 21
    const/4 v0, 0x0

    .line 24
    iput-object v0, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Lcom/android/keyguard/MiuiLockPatternChecker$1;

    .line 25
    if-nez p4, :cond_0

    .line 27
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x1

    .line 30
    move v2, p1

    .line 31
    move v3, p2

    .line 32
    move v4, p3

    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPasswordChecked(IIIZZ)V

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 39
    return-void

    .line 42
    :goto_0
    iget-object p0, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 43
    const/4 p1, 0x3

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 46
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method

.method public final onEarlyMatched()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    .line 4
    const-string v2, "miui_keyguard_password"

    .line 6
    iget v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->val$userId:I

    .line 8
    const-string v4, ", user: "

    .line 10
    iget-wide v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->val$startUnlockTime:J

    .line 12
    const/4 v7, 0x3

    .line 14
    iget-object v8, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 17
    goto :goto_0

    .line 20
    :pswitch_0
    iget-object v0, v8, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 21
    invoke-virtual {v0, v7}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v7, "password unlock duration "

    .line 28
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    move-result-wide v7

    .line 36
    sub-long/2addr v7, v5

    .line 37
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 50
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    .line 54
    iget v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->val$userId:I

    .line 56
    const/4 v7, 0x1

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v8, 0x1

    .line 60
    move v4, v6

    .line 61
    invoke-virtual/range {v3 .. v8}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPasswordChecked(IIIZZ)V

    .line 62
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 65
    return-void

    .line 68
    :goto_0
    iget-object v0, v8, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 69
    invoke-virtual {v0, v7}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    const-string v7, "password unlock duration other user"

    .line 76
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    move-result-wide v7

    .line 84
    sub-long/2addr v7, v5

    .line 85
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 98
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    .line 102
    iget v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;->val$userId:I

    .line 104
    const/4 v7, 0x1

    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v8, 0x1

    .line 108
    move v4, v6

    .line 109
    invoke-virtual/range {v3 .. v8}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPasswordChecked(IIIZZ)V

    .line 110
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 113
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 118
.end method
