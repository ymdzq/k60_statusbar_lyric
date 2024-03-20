.class Lcom/android/settings/MiuiSettings$HeaderAdapter$1;
.super Ljava/lang/Object;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSettings$HeaderAdapter;->setClick(Lcom/android/settings/MiuiSettings$HeaderViewHolder;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

.field final synthetic val$header:Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

.field final synthetic val$holder:Lcom/android/settings/MiuiSettings$HeaderViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSettings$HeaderAdapter;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;ILcom/android/settings/MiuiSettings$HeaderViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1714
    iput-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iput-object p2, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->val$header:Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    iput p3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->val$position:I

    iput-object p4, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->val$holder:Lcom/android/settings/MiuiSettings$HeaderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1718
    sget-boolean p1, Lmiui/os/Build;->IS_MIPAD:Z

    .line 1722
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    invoke-static {p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->-$$Nest$fgetmMiHomeManager(Lcom/android/settings/MiuiSettings$HeaderAdapter;)Lcom/android/settings/cust/MiHomeManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/settings/cust/MiHomeManager;->isMiHomeManagerInstalled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    invoke-static {p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->-$$Nest$fgetmMiHomeManager(Lcom/android/settings/MiuiSettings$HeaderAdapter;)Lcom/android/settings/cust/MiHomeManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->val$header:Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    iget-object v1, v1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/cust/MiHomeManager;->isForbidden(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1723
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    invoke-static {p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->-$$Nest$fgetmContext(Lcom/android/settings/MiuiSettings$HeaderAdapter;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->settings_forbidden_message:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1727
    :cond_0
    iget p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->val$position:I

    if-ltz p1, :cond_5

    .line 1728
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    invoke-static {v1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->-$$Nest$fgetmHeaders(Lcom/android/settings/MiuiSettings$HeaderAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto/16 :goto_0

    .line 1731
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v1, v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v2, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v2}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmCurrentSelectedHeaderIndex(Lcom/android/settings/MiuiSettings;)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1732
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v1, v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSelectedView(Lcom/android/settings/MiuiSettings;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1733
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v1, v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSelectedView(Lcom/android/settings/MiuiSettings;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 1735
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v1, v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    iget-object v2, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->val$holder:Lcom/android/settings/MiuiSettings$HeaderViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/settings/MiuiSettings;->-$$Nest$fputmSelectedView(Lcom/android/settings/MiuiSettings;Landroid/view/View;)V

    .line 1736
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v1, v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSelectedView(Lcom/android/settings/MiuiSettings;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1737
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v1, v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSelectedView(Lcom/android/settings/MiuiSettings;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 1740
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v1, v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v1, v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSelectedView(Lcom/android/settings/MiuiSettings;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1741
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v1, v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSelectedView(Lcom/android/settings/MiuiSettings;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 1744
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    invoke-static {v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->-$$Nest$fgetmHeaders(Lcom/android/settings/MiuiSettings$HeaderAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    .line 1746
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;->this$1:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/MiuiSettings;->onHeaderClick(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1748
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method
