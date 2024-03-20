.class Lcom/android/settings/display/PaperModeSetAppsFragment$2$1;
.super Ljava/lang/Object;
.source "PaperModeSetAppsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PaperModeSetAppsFragment$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$1:Lcom/android/settings/display/PaperModeSetAppsFragment$2;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeSetAppsFragment$2;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment$2$1;->this$1:Lcom/android/settings/display/PaperModeSetAppsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment$2$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;)I
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment$2$1;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 183
    check-cast p1, Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;

    check-cast p2, Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/PaperModeSetAppsFragment$2$1;->compare(Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;)I

    move-result p0

    return p0
.end method
