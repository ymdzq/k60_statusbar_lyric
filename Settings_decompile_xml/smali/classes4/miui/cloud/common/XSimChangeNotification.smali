.class public Lmiui/cloud/common/XSimChangeNotification;
.super Ljava/lang/Object;
.source "XSimChangeNotification.java"


# static fields
.field public static final BROADCAST_ACTION_CLOUDID_CHANGED:Ljava/lang/String; = "com.xiaomi.X_SIM_CLOUDID_CHANGED"

.field public static final BROADCAST_ACTION_INSERTED:Ljava/lang/String; = "com.xiaomi.X_SIM_INSERTED"

.field public static final BROADCAST_ACTION_NEW_CLOUDID:Ljava/lang/String; = "com.xiaomi.X_SIM_NEW_CLOUDID"

.field public static final BROADCAST_ACTION_REMOVED:Ljava/lang/String; = "com.xiaomi.X_SIM_REMOVED"

.field public static final BROADCAST_ACTION_SIMID_READY:Ljava/lang/String; = "com.xiaomi.X_SIM_SIMID_READY"

.field public static final BROADCAST_EXTRA_KEY_CLOUD_ID:Ljava/lang/String; = "cloud_id"

.field public static final BROADCAST_EXTRA_KEY_SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final BROADCAST_EXTRA_KEY_SLOT_ID:Ljava/lang/String; = "slot_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBroadcastCloudIdChangedIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.X_SIM_CLOUDID_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "slot_id"

    .line 39
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "cloud_id"

    .line 40
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getBroadcastNewCloudIdIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.X_SIM_NEW_CLOUDID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "slot_id"

    .line 32
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "cloud_id"

    .line 33
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getBroadcastSIMIdReadyIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.X_SIM_SIMID_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "slot_id"

    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "sim_id"

    .line 47
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getBroadcastSIMInsertedIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.X_SIM_INSERTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "slot_id"

    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "sim_id"

    .line 20
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getBroadcastSIMRemovedIntent(I)Landroid/content/Intent;
    .locals 2

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.X_SIM_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "slot_id"

    .line 26
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method
