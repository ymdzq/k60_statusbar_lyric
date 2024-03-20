.class Lcom/android/settings/accounts/MiuiAccountSettings$3;
.super Ljava/lang/Object;
.source "MiuiAccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/MiuiAccountSettings;->syncOrCancel(ZI)V
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

    .line 495
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$3;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    iput p2, p0, Lcom/android/settings/accounts/MiuiAccountSettings$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 498
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$3;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    const/4 p2, 0x1

    iget p0, p0, Lcom/android/settings/accounts/MiuiAccountSettings$3;->val$userId:I

    invoke-static {p1, p2, p0}, Lcom/android/settings/accounts/MiuiAccountSettings;->-$$Nest$mturnOnSyncs(Lcom/android/settings/accounts/MiuiAccountSettings;ZI)V

    return-void
.end method
