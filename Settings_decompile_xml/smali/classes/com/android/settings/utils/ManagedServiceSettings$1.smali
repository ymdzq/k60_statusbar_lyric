.class Lcom/android/settings/utils/ManagedServiceSettings$1;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/utils/ManagedServiceSettings;->updateList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/utils/ManagedServiceSettings;

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$pref:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/utils/ManagedServiceSettings;Landroidx/preference/CheckBoxPreference;Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$1;->this$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iput-object p2, p0, Lcom/android/settings/utils/ManagedServiceSettings$1;->val$pref:Landroidx/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings/utils/ManagedServiceSettings$1;->val$cn:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$1;->val$pref:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings$1;->this$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings$1;->val$cn:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Lcom/android/settings/utils/ManagedServiceSettings;->isServiceEnabled(Landroid/content/ComponentName;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
