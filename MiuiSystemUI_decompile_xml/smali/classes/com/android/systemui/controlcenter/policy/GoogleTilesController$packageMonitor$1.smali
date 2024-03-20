.class public final Lcom/android/systemui/controlcenter/policy/GoogleTilesController$packageMonitor$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/GoogleTilesController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$packageMonitor$1;->this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    move-result p2

    .line 5
    const v0, 0x14c3c7dc

    .line 6
    if-eq p2, v0, :cond_3

    .line 9
    const v0, 0x45c1f4f5

    .line 11
    if-eq p2, v0, :cond_2

    .line 14
    const v0, 0x4e7835c1

    .line 16
    if-eq p2, v0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const-string p2, "com.google.android.apps.chromecast.app"

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$packageMonitor$1;->this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 31
    invoke-static {p0}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->access$updateGHomeAvailable(Lcom/android/systemui/controlcenter/policy/GoogleTilesController;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_2
    const-string p2, "com.google.android.apps.nbu.paisa.user"

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 42
    if-nez p1, :cond_4

    .line 43
    goto :goto_0

    .line 45
    :cond_3
    const-string p2, "com.google.android.apps.walletnfcrel"

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 51
    if-nez p1, :cond_4

    .line 52
    goto :goto_0

    .line 54
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$packageMonitor$1;->this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 55
    invoke-static {p0}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->access$updateGPayAvailable(Lcom/android/systemui/controlcenter/policy/GoogleTilesController;)V

    .line 57
    :goto_0
    return-void
    .line 60
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    move-result p2

    .line 5
    const v0, 0x14c3c7dc

    .line 6
    if-eq p2, v0, :cond_3

    .line 9
    const v0, 0x45c1f4f5

    .line 11
    if-eq p2, v0, :cond_2

    .line 14
    const v0, 0x4e7835c1

    .line 16
    if-eq p2, v0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const-string p2, "com.google.android.apps.chromecast.app"

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$packageMonitor$1;->this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 31
    invoke-static {p0}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->access$updateGHomeAvailable(Lcom/android/systemui/controlcenter/policy/GoogleTilesController;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_2
    const-string p2, "com.google.android.apps.nbu.paisa.user"

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 42
    if-nez p1, :cond_4

    .line 43
    goto :goto_0

    .line 45
    :cond_3
    const-string p2, "com.google.android.apps.walletnfcrel"

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 51
    if-nez p1, :cond_4

    .line 52
    goto :goto_0

    .line 54
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$packageMonitor$1;->this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 55
    invoke-static {p0}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->access$updateGPayAvailable(Lcom/android/systemui/controlcenter/policy/GoogleTilesController;)V

    .line 57
    :goto_0
    return-void
    .line 60
.end method
