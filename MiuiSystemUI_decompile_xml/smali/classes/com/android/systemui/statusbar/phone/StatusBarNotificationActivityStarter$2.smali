.class public final Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic val$animate:Z

.field public final synthetic val$appUid:I

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/content/Intent;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$animate:Z

    .line 6
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$intent:Landroid/content/Intent;

    .line 8
    iput p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$appUid:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 7

    .line 1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$animate:Z

    .line 4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$intent:Landroid/content/Intent;

    .line 6
    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$appUid:I

    .line 8
    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;

    .line 10
    move-object v0, v6

    .line 12
    move-object v1, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/content/Intent;I)V

    .line 14
    invoke-static {v6}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 17
    const/4 p0, 0x1

    .line 20
    return p0
    .line 21
.end method

.method public final willRunAnimationOnKeyguard()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$animate:Z

    .line 2
    return p0
    .line 4
.end method
