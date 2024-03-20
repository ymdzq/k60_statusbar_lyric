.class Lcom/android/settings/BasePreferenceFragment$1;
.super Ljava/lang/Object;
.source "BasePreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BasePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BasePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BasePreferenceFragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/settings/BasePreferenceFragment$1;->this$0:Lcom/android/settings/BasePreferenceFragment;

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

    .line 130
    sget-boolean p1, Lmiui/os/Build;->IS_MIPAD:Z

    if-ltz p3, :cond_1

    .line 136
    iget-object p1, p0, Lcom/android/settings/BasePreferenceFragment$1;->this$0:Lcom/android/settings/BasePreferenceFragment;

    iget-object p1, p1, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p3, p1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/android/settings/BasePreferenceFragment$1;->this$0:Lcom/android/settings/BasePreferenceFragment;

    iget-object p1, p1, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    .line 140
    iget-object p0, p0, Lcom/android/settings/BasePreferenceFragment$1;->this$0:Lcom/android/settings/BasePreferenceFragment;

    invoke-static {p0, p1, p3}, Lcom/android/settings/BasePreferenceFragment;->-$$Nest$monHeaderClick(Lcom/android/settings/BasePreferenceFragment;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;I)V

    :cond_1
    :goto_0
    return-void
.end method
