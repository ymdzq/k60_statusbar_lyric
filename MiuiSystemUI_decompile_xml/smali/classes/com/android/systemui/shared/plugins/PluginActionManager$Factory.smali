.class public final Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

.field public final mPluginInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

.field public final mPrivilegedPlugins:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Ljava/util/List;Lcom/android/systemui/shared/plugins/PluginInstance$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mNotificationManager:Landroid/app/NotificationManager;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mPrivilegedPlugins:Ljava/util/List;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mPluginInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    .line 19
    return-void
    .line 21
.end method
