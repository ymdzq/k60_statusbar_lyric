.class Lcom/android/settings/identification/OAIDSettings$2;
.super Ljava/lang/Object;
.source "OAIDSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/identification/OAIDSettings;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/identification/OAIDSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/identification/OAIDSettings;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/settings/identification/OAIDSettings$2;->this$0:Lcom/android/settings/identification/OAIDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/android/settings/identification/OAIDSettings$2;->this$0:Lcom/android/settings/identification/OAIDSettings;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/android/settings/identification/OAIDSettings;->-$$Nest$fputmAutoNextStepTime(Lcom/android/settings/identification/OAIDSettings;I)V

    .line 127
    iget-object p0, p0, Lcom/android/settings/identification/OAIDSettings$2;->this$0:Lcom/android/settings/identification/OAIDSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/identification/OAIDSettings;->-$$Nest$fputmBtnAllow(Lcom/android/settings/identification/OAIDSettings;Landroid/widget/Button;)V

    return-void
.end method
