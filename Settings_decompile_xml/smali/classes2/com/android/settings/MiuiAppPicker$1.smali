.class Lcom/android/settings/MiuiAppPicker$1;
.super Ljava/lang/Object;
.source "MiuiAppPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiAppPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiAppPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiAppPicker;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settings/MiuiAppPicker$1;->this$0:Lcom/android/settings/MiuiAppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 38
    iget-object p1, p0, Lcom/android/settings/MiuiAppPicker$1;->this$0:Lcom/android/settings/MiuiAppPicker;

    invoke-static {p1}, Lcom/android/settings/MiuiAppPicker;->-$$Nest$fgetmAdapter(Lcom/android/settings/MiuiAppPicker;)Lcom/android/settings/MiuiAppPicker$AppListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;

    .line 39
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 40
    iget-object p1, p1, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiAppPicker$1;->this$0:Lcom/android/settings/MiuiAppPicker;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 42
    iget-object p0, p0, Lcom/android/settings/MiuiAppPicker$1;->this$0:Lcom/android/settings/MiuiAppPicker;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
