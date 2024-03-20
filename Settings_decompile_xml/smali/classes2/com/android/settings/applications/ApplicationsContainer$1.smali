.class Lcom/android/settings/applications/ApplicationsContainer$1;
.super Landroid/os/AsyncTask;
.source "ApplicationsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ApplicationsContainer;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsContainer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$nm:Landroid/app/INotificationManager;

.field final synthetic val$npm:Landroid/net/NetworkPolicyManager;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsContainer;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->this$0:Lcom/android/settings/applications/ApplicationsContainer;

    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$nm:Landroid/app/INotificationManager;

    iput-object p4, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$npm:Landroid/net/NetworkPolicyManager;

    iput-object p5, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 956
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 958
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 960
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 961
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 964
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$nm:Landroid/app/INotificationManager;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v4, v5, v6, v3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :catch_0
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 969
    iget-boolean v4, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_0

    .line 971
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 973
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v0, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 983
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 984
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v4}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move p1, v0

    .line 985
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 988
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 990
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$npm:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1, v3}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object p1

    .line 992
    array-length v1, p1

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_3

    aget v3, p1, v2

    .line 994
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$npm:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5, v3, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 996
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->val$handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsContainer$1$1;-><init>(Lcom/android/settings/applications/ApplicationsContainer$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v4
.end method
