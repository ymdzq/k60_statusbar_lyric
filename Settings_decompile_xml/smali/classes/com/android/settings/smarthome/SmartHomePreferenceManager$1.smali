.class Lcom/android/settings/smarthome/SmartHomePreferenceManager$1;
.super Ljava/lang/Object;
.source "SmartHomePreferenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smarthome/SmartHomePreferenceManager;->updateSmartHome(Lmiuix/preference/DropDownPreference;Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

.field final synthetic val$smartHome:Lmiuix/preference/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/smarthome/SmartHomePreferenceManager;Lmiuix/preference/DropDownPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager$1;->this$0:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    iput-object p2, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager$1;->val$smartHome:Lmiuix/preference/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager$1;->this$0:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    iget-object p0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager$1;->val$smartHome:Lmiuix/preference/DropDownPreference;

    invoke-static {v0, p0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->-$$Nest$mperformClick(Lcom/android/settings/smarthome/SmartHomePreferenceManager;Lmiuix/preference/DropDownPreference;)V

    return-void
.end method
