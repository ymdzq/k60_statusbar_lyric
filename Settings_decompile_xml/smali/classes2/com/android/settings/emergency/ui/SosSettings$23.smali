.class Lcom/android/settings/emergency/ui/SosSettings$23;
.super Ljava/lang/Object;
.source "SosSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosSettings;->showPrivacyNotAgreeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/SosSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosSettings;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$23;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 709
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings$23;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$magreeProlicy(Lcom/android/settings/emergency/ui/SosSettings;Landroid/content/Context;)V

    return-void
.end method
