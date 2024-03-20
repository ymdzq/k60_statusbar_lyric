.class Lcom/android/settings/OwnerInfoSettings$1;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OwnerInfoSettings;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-static {p1}, Lcom/android/settings/OwnerInfoSettings;->-$$Nest$fgetmOwnerInfo(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/OwnerInfoSettings;->-$$Nest$fputmIsChanged(Lcom/android/settings/OwnerInfoSettings;Z)V

    if-eqz p2, :cond_0

    .line 100
    iget-object p1, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 101
    iget-object p0, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-static {p0}, Lcom/android/settings/OwnerInfoSettings;->-$$Nest$fgetmOwnerInfo(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
