.class Lcom/android/settings/accounts/MiuiAccountSettings$2;
.super Ljava/lang/Object;
.source "MiuiAccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/MiuiAccountSettings;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiAccountSettings;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$2;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    iput p2, p0, Lcom/android/settings/accounts/MiuiAccountSettings$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 386
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$2;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-static {p1}, Lcom/android/settings/accounts/MiuiAccountSettings;->-$$Nest$fgetmUm(Lcom/android/settings/accounts/MiuiAccountSettings;)Landroid/os/UserManager;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/accounts/MiuiAccountSettings$2;->val$userId:I

    invoke-virtual {p1, p0}, Landroid/os/UserManager;->removeUser(I)Z

    return-void
.end method
