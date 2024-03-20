.class Lcom/android/settings/security/UnlockModeCardPreference$1;
.super Ljava/lang/Object;
.source "UnlockModeCardPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/UnlockModeCardPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/UnlockModeCardPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/security/UnlockModeCardPreference;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/security/UnlockModeCardPreference$1;->this$0:Lcom/android/settings/security/UnlockModeCardPreference;

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

    .line 63
    iget-object p1, p0, Lcom/android/settings/security/UnlockModeCardPreference$1;->this$0:Lcom/android/settings/security/UnlockModeCardPreference;

    invoke-static {p1}, Lcom/android/settings/security/UnlockModeCardPreference;->-$$Nest$fgetmAdapter(Lcom/android/settings/security/UnlockModeCardPreference;)Lcom/android/settings/SettingsCardAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/SettingsCardAdapter;->getCardList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/CardInfo;

    .line 64
    iget-object p0, p0, Lcom/android/settings/security/UnlockModeCardPreference$1;->this$0:Lcom/android/settings/security/UnlockModeCardPreference;

    invoke-static {p0, p3}, Lcom/android/settings/security/UnlockModeCardPreference;->-$$Nest$fputrefreshPosition(Lcom/android/settings/security/UnlockModeCardPreference;I)V

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/android/settings/CardInfo;->isDisable()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/CardInfo;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/CardInfo;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    .line 69
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
