.class public final synthetic Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 14
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 18
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 22
    move-result v0

    .line 25
    invoke-virtual {v3, v0}, Landroid/app/WallpaperManager;->getWallpaperInfoForUser(I)Landroid/app/WallpaperInfo;

    .line 26
    move-result-object v0

    .line 29
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 30
    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperController:Lcom/android/systemui/util/WallpaperController;

    .line 32
    iput-object v0, v4, Lcom/android/systemui/util/WallpaperController;->wallpaperInfo:Landroid/app/WallpaperInfo;

    .line 34
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v3

    .line 41
    const v4, 0x111012f    # @android:bool/config_dreamsActivatedOnDockByDefault

    .line 42
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 45
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    .line 53
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    goto :goto_0

    .line 59
    :cond_0
    move v1, v2

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 61
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 63
    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20$$ExternalSyntheticLambda1;

    .line 65
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;Z)V

    .line 67
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 70
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 72
    return-void

    .line 75
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 76
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;->this$1:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    .line 80
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 82
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 84
    new-instance v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 86
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    .line 88
    check-cast v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 91
    iput-object v4, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 93
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->mOverlays:Landroid/util/ArraySet;

    .line 95
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 97
    move-result v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    goto :goto_2

    .line 103
    :cond_1
    move v1, v2

    .line 104
    :goto_2
    invoke-virtual {v3, p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setForcePluginOpen(Ljava/lang/Object;Z)V

    .line 105
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 110
.end method
