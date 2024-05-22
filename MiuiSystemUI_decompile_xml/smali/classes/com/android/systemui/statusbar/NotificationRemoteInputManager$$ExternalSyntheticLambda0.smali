.class public final synthetic Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:[Landroid/app/RemoteInput;

.field public final synthetic f$3:Landroid/app/RemoteInput;

.field public final synthetic f$4:Landroid/app/PendingIntent;

.field public final synthetic f$5:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$2:[Landroid/app/RemoteInput;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$3:Landroid/app/RemoteInput;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$4:Landroid/app/PendingIntent;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$5:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$2:[Landroid/app/RemoteInput;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$3:Landroid/app/RemoteInput;

    .line 8
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$4:Landroid/app/PendingIntent;

    .line 10
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$5:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    .line 12
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;)Z

    .line 16
    return-void
    .line 19
.end method
