.class Lcom/android/settings/MiuiSettings$3;
.super Ljava/lang/Object;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSettings;->registerExtensionPreferenceChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSettings;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/android/settings/MiuiSettings$3;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ex_func_need_update"

    .line 392
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 393
    invoke-static {}, Lcom/android/settings/MiuiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex_func_need_update change : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$3;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSettingsFragment(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/SettingsFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$3;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSettingsFragment(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/SettingsFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/SettingsFragment;->buildAdapter()V

    .line 396
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$3;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/settings/MiuiUtils;->setExtensionFuncUpdateIfNeeded(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
