.class Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$2;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->showDialog(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

.field final synthetic val$_ai:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 412
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$2;->this$1:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    iput-object p2, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$2;->val$_ai:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$2;->this$1:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    invoke-static {v0, p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->-$$Nest$mgetFlagByIndex(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;I)I

    move-result p2

    .line 415
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$2;->val$_ai:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;

    invoke-virtual {v0, p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->setFlag(I)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$2;->this$1:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmContext(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$2;->val$_ai:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;

    invoke-virtual {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/settings/AutoDisableScreenButtonsHelper;->setFlag(Landroid/content/Context;Ljava/lang/String;I)V

    .line 417
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 418
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$2;->this$1:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$mloadPackages(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V

    return-void
.end method
