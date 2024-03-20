.class public interface abstract Lcom/android/systemui/statusbar/NotificationShelfController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public static checkRefactorFlagEnabled()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 2
    const-string v0, "Code path not supported when Flags.NOTIFICATION_SHELF_REFACTOR is "

    .line 4
    const-string v1, "disabled"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    const-string v1, "NotifShelf"

    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public abstract bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
.end method

.method public abstract canModifyColorOfNotifications()Z
.end method

.method public abstract getIntrinsicHeight()I
.end method

.method public abstract getView()Lcom/android/systemui/statusbar/NotificationShelf;
.end method

.method public abstract setOnClickListener(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$bindController$1;)V
.end method
