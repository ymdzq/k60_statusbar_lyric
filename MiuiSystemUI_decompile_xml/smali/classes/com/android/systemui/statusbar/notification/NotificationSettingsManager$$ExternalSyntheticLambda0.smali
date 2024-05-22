.class public final synthetic Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/systemui/CloudDataListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onCloudDataUpdate()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$$ExternalSyntheticLambda1;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mBgHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
    .line 17
.end method
