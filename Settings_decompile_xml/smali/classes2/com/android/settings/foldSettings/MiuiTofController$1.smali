.class Lcom/android/settings/foldSettings/MiuiTofController$1;
.super Ljava/lang/Object;
.source "MiuiTofController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/foldSettings/MiuiTofController;->handleNearPreferenceClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/foldSettings/MiuiTofController;


# direct methods
.method constructor <init>(Lcom/android/settings/foldSettings/MiuiTofController;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/foldSettings/MiuiTofController$1;->this$0:Lcom/android/settings/foldSettings/MiuiTofController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/android/settings/foldSettings/MiuiTofController$1;->this$0:Lcom/android/settings/foldSettings/MiuiTofController;

    invoke-static {p1}, Lcom/android/settings/foldSettings/MiuiTofController;->access$000(Lcom/android/settings/foldSettings/MiuiTofController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "face_unlock_success_stay_screen"

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 74
    iget-object p1, p0, Lcom/android/settings/foldSettings/MiuiTofController$1;->this$0:Lcom/android/settings/foldSettings/MiuiTofController;

    invoke-static {p1}, Lcom/android/settings/foldSettings/MiuiTofController;->access$100(Lcom/android/settings/foldSettings/MiuiTofController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "face_unlock_success_show_message"

    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 77
    iget-object p1, p0, Lcom/android/settings/foldSettings/MiuiTofController$1;->this$0:Lcom/android/settings/foldSettings/MiuiTofController;

    invoke-static {p1}, Lcom/android/settings/foldSettings/MiuiTofController;->-$$Nest$fgetmTofPreference(Lcom/android/settings/foldSettings/MiuiTofController;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/foldSettings/MiuiTofController$1;->this$0:Lcom/android/settings/foldSettings/MiuiTofController;

    invoke-static {p1}, Lcom/android/settings/foldSettings/MiuiTofController;->-$$Nest$fgetsavePeopleNearWakeupKey(Lcom/android/settings/foldSettings/MiuiTofController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/android/settings/foldSettings/MiuiTofController;->-$$Nest$mupdateSettingValue(Lcom/android/settings/foldSettings/MiuiTofController;Ljava/lang/String;I)V

    .line 79
    iget-object p0, p0, Lcom/android/settings/foldSettings/MiuiTofController$1;->this$0:Lcom/android/settings/foldSettings/MiuiTofController;

    invoke-static {p0}, Lcom/android/settings/foldSettings/MiuiTofController;->access$200(Lcom/android/settings/foldSettings/MiuiTofController;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->miui_tof_screen_on_success_toast:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/android/settings/foldSettings/MiuiTofController$1;->this$0:Lcom/android/settings/foldSettings/MiuiTofController;

    invoke-static {p0}, Lcom/android/settings/foldSettings/MiuiTofController;->-$$Nest$fgetsavePeopleNearWakeupKey(Lcom/android/settings/foldSettings/MiuiTofController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/settings/foldSettings/MiuiTofController;->-$$Nest$mupdateSettingValue(Lcom/android/settings/foldSettings/MiuiTofController;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
