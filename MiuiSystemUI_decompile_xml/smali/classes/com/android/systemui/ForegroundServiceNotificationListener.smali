.class public final Lcom/android/systemui/ForegroundServiceNotificationListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

.field public final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 9
    return-void
    .line 11
.end method
