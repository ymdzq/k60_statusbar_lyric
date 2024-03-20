.class public final Lcom/android/systemui/volume/VolumeDialogComponent$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent$1;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onZenPrioritySettingsClicked()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogComponent;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$1;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-interface {p0, v0, v1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    .line 9
    return-void
    .line 12
.end method

.method public final onZenSettingsClicked()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogComponent;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$1;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-interface {p0, v0, v1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    .line 9
    return-void
    .line 12
.end method
