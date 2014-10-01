.class public Lcom/android/settings/fuelgauge/EnhancedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "EnhancedRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method private adjustChildrenLayout(I)V
    .locals 9
    .param p1, "myWidth"    # I

    .prologue
    const/4 v8, 0x3

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/EnhancedRelativeLayout;->getChildCount()I

    move-result v2

    .line 53
    .local v2, "count":I
    const/4 v1, 0x0

    .line 54
    .local v1, "childrenWidth":I
    const/4 v3, 0x0

    .line 55
    .local v3, "currentView":Landroid/view/View;
    const/4 v5, -0x1

    .line 59
    .local v5, "lastChildViewId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 60
    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/EnhancedRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v1, v7

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 67
    .local v6, "param":Landroid/widget/RelativeLayout$LayoutParams;
    if-le v1, p1, :cond_0

    .line 68
    invoke-virtual {v6, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 76
    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 79
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private measureWidth(I)I
    .locals 3
    .param p1, "pWidthMeasureSpec"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 86
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 88
    .local v2, "widthSize":I
    sparse-switch v1, :sswitch_data_0

    .line 96
    :goto_0
    return v0

    .line 91
    :sswitch_0
    move v0, v2

    .line 92
    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/EnhancedRelativeLayout;->measureWidth(I)I

    move-result v0

    .line 45
    .local v0, "measureWidth":I
    if-lez v0, :cond_0

    .line 46
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/EnhancedRelativeLayout;->adjustChildrenLayout(I)V

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 49
    return-void
.end method
