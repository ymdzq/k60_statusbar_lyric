.class public final synthetic Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/external/CustomTile;

.field public final synthetic f$1:Landroid/app/PendingIntent;

.field public final synthetic f$2:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/app/PendingIntent;Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 11
    return-void
    .line 14
.end method
