.class public final synthetic Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 11
    const-string/jumbo v1, "updatable_focus_notifs"

    .line 12
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    return-void
    .line 18
.end method
