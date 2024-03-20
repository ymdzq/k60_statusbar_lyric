.class Lcom/android/settings/OwnerInfoSettings$3;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 135
    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-static {p1}, Lcom/android/settings/OwnerInfoSettings;->-$$Nest$fgetmCheckbox(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-static {p0}, Lcom/android/settings/OwnerInfoSettings;->-$$Nest$fgetmCheckbox(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
