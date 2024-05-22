.class public final Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiBarrageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiBarrageMonitor;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPackageDataCleared(Ljava/lang/String;I)V
    .locals 4

    .line 1
    const-string v0, "com.xiaomi.barrage"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    const-string v0, "com.miui.securitycenter"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    const-string v0, "com.miui.securitymanager"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "\'s data has been cleared by uid:"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, " !"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 50
    const-string v1, "MiuiBarrageController"

    .line 51
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiBarrageMonitor;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 56
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiBarrageMonitor;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 64
    iget v1, v1, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mCurrentUserId:I

    .line 66
    const-string v2, "key_barrage_font_size_scale_level"

    .line 68
    const/4 v3, 0x2

    .line 70
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiBarrageMonitor;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 74
    iget v1, v1, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mCurrentUserId:I

    .line 76
    const-string v2, "key_barrage_speed_factor"

    .line 78
    const/high16 v3, 0x3f000000    # 0.5f

    .line 80
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiBarrageMonitor;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 85
    iget v1, v1, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mCurrentUserId:I

    .line 87
    const-string v2, "key_selected_color_index_position"

    .line 89
    const/4 v3, 0x0

    .line 91
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 92
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageDataCleared(Ljava/lang/String;I)V

    .line 95
    return-void
    .line 98
.end method
