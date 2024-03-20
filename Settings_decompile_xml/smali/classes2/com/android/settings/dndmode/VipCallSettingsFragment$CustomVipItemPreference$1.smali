.class Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference$1;
.super Ljava/lang/Object;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference$1;->this$1:Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference$1;->this$1:Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;

    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->-$$Nest$mshowVipListDeleteConfirmDialog(Lcom/android/settings/dndmode/VipCallSettingsFragment;Ljava/lang/String;)V

    return-void
.end method
