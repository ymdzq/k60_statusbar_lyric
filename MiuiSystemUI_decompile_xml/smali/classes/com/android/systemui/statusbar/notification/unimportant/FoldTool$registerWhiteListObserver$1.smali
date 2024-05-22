.class public final Lcom/android/systemui/statusbar/notification/unimportant/FoldTool$registerWhiteListObserver$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/systemui/CloudDataListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldTool$registerWhiteListObserver$1;->$context:Landroid/content/Context;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onCloudDataUpdate()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper;->logger:Lcom/android/systemui/log/UnimportantNotifLogger;

    .line 2
    sget-object v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper;->bgHandler:Landroid/os/Handler;

    .line 4
    new-instance v1, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper$updateAll$1;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldTool$registerWhiteListObserver$1;->$context:Landroid/content/Context;

    .line 8
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper$updateAll$1;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
    .line 16
.end method
