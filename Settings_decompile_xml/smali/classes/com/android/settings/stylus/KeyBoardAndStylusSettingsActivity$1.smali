.class Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity$1;
.super Ljava/lang/Object;
.source "KeyBoardAndStylusSettingsActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity$1;->this$0:Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity$1;->this$0:Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;

    invoke-static {p0, p1}, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->-$$Nest$fputmCurrentPosition(Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;I)V

    return-void
.end method
